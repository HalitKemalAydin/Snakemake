rule fastqc:
    input: 
        "data/{sample}.fastq"
    output:
        html="results/{sample}.html",
        zip="results/{sample}.zip"
    shell:
        "fastqc {input} --output results"


