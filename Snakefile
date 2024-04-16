
PREPROCESS=["results/fastqc-raw/ERR4082748_1.html", "results/fastqc-raw/ERR4082748_2.html", "results/fastqc-raw/ERR4082748_1.zip", "results/fastqc-raw/ERR4082748_2.zip"]

CUTADAPT=["results/processed/ERR4082748_1.fastq.gz","results/processed/ERR4082748_2.fastq.gz"]

AFTER_CUTADAPT=["results/processed/ERR4082748_1.html", "results/processed/ERR4082748_2.html", "results/processed/ERR4082748_1.zip", "results/processed/ERR4082748_2.zip"]

INDEX=["data/ref/ornek_referans_genom.fna.bwt"]

SAI=["results/alignment/bwa/ERR4082748_1_p.sai", "results/alignment/bwa/ERR4082748_2_p.sai"]

SAMPE=["results/alignment/bwa/ERR4082748.bam"]

SORT=["results/alignment/bwa/ERR4082748.sorted.bam"]

SINDEX=["results/alignment/bwa/ERR4082748.sorted.bam.bai"]

VIEW=["results/alignment/bwa/ERR4082748.sam"]

rule all:
	input: 
           PREPROCESS,
           CUTADAPT,
           AFTER_CUTADAPT,
           SAI,
           SAMPE,
           SORT,
           SINDEX,
           VIEW

rule preprocess:
    input: PREPROCESS

rule process:
	input: CUTADAPT

rule after_cutadapt:
	input: AFTER_CUTADAPT

rule index:
    input: INDEX

rule sai:
	input: SAI

rule sampe:
    input: SAMPE

rule sort:
    input: SORT

rule sindex:
    input: SINDEX

rule view:
    input: VIEW

rule fastqc:
    input: 
        "data/raw/{sample}_1.fastq.gz",
        "data/raw/{sample}_2.fastq.gz"
    output:
        "results/fastqc-raw/{sample}_1.html",
        "results/fastqc-raw/{sample}_1.zip",
        "results/fastqc-raw/{sample}_2.html",
        "results/fastqc-raw/{sample}_2.zip"
    shell:
        "fastqc {input} --outdir results/fastqc-raw"

rule cutadapt:
    input:
        "data/raw/{sample}_1.fastq.gz",
        "data/raw/{sample}_2.fastq.gz"
    output:
        R1="results/processed/{sample}_1.fastq.gz",
        R2="results/processed/{sample}_2.fastq.gz"
    threads: 4
    shell:
        "cutadapt -q 20 -m 10 --trim-n -Z -j {threads} -a AGATCGGAAGAG -A AGATCGGAAGAG -o {output.R1} -p {output.R2} {input}"

rule fastqc_after_trim:
    input: 
        "results/processed/{sample}_1.fastq.gz",
        "results/processed/{sample}_2.fastq.gz"
    output:
        "results/processed/{sample}_1.html",
        "results/processed/{sample}_1.zip",
        "results/processed/{sample}_2.html",
        "results/processed/{sample}_2.zip"
    shell:
        "fastqc {input} --outdir results/processed/"

rule bwa_index:
  input:
    "data/ref/ornek_referans_genom.fna"
  output:
    "data/ref/ornek_referans_genom.fna.bwt"
  shell:
    "bwa index {input}"

rule bwa_aln:
  input:
    ref= "data/ref/ornek_referans_genom.fna",
    index= "data/ref/ornek_referans_genom.fna.bwt",
    fastq1= "results/processed/{sample}_1.fastq.gz",
    fastq2= "results/processed/{sample}_2.fastq.gz"
  output:
    sai1= "results/alignment/bwa/{sample}_1_p.sai",
    sai2= "results/alignment/bwa/{sample}_2_p.sai"
  threads: 4
  shell: 
    """
    bwa aln -t {threads} {input.ref} {input.fastq1} > {output.sai1}
    bwa aln -t {threads} {input.ref} {input.fastq2} > {output.sai2}
    """

rule bwa_sampe:
    input:
        ref= "data/ref/ornek_referans_genom.fna",
        sai1= "results/alignment/bwa/{sample}_1_p.sai",
        sai2= "results/alignment/bwa/{sample}_2_p.sai",
        fastq1= "results/processed/{sample}_1.fastq.gz",
        fastq2= "results/processed/{sample}_2.fastq.gz"
    output:
        "results/alignment/bwa/{sample}.bam"
    threads: 4
    shell:
        """
        bwa sampe {input.ref} {input.sai1} {input.sai2} {input.fastq1} {input.fastq2} | samtools view -F2 -q30 -Sb > {output}
        """

rule samtools_sort:
    input:
        "results/alignment/bwa/{sample}.bam"
    output:
        "results/alignment/bwa/{sample}.sorted.bam"
    shell:
        "samtools sort {input} -o {output}"

rule samtools_index:
    input:
        "results/alignment/bwa/{sample}.sorted.bam"
    output:
        "results/alignment/bwa/{sample}.sorted.bam.bai"
    shell:
        "samtools index {input}"

rule samtools_view:
    input:
        "results/alignment/bwa/{sample}.sorted.bam"
    output:
        "results/alignment/bwa/{sample}.sam"
    shell:
        "samtools view -h {input} > {output}"