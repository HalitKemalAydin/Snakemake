
rule fastqc:
    input:
        "data/{sample}.fastq"
    output:
        html="{sample}.html"
        zip="{sample}.zip"
    shell:
        "{input} --outdir results"