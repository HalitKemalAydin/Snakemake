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