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