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

rule bwa_aln:
    input:
        ref= "data/ref/ornek_referans_genom.fna",
        fastq1= "results/processed/{sample}_1.fastq.gz",
        fastq2= "results/processed/{sample}_2.fastq.gz"
    output:
        sai1= "results/alignment/bwa/{sample}_1_p.sai",
        sai2= "results/alignment/bwa/{sample}_2_p.sai"
    threads: 4
    shell:
        "bwa aln -j {threads} {input.ref} {input.fastq1} > {output.sai1}
        bwa aln -j {threads} {input.ref} {input.fastq2} > {output.sai2}"