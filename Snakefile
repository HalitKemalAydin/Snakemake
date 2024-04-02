
rule fastqc:
    input: 
        "data/{sample}.fastq"
    output:
        html="results/{sample}.html",
        zip="results/{sample}.zip"
    shell:
        "fastqc {input} --outdir results"

        snakemake results/ERR4082748_2.html
        snakemake -np results/ERR4082748_1.html