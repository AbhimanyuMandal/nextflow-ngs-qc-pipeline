process FASTQC {

    tag "$reads.simpleName"

        publishDir "results/fastqc", mode: "copy"


    input:
    path reads

    output:
     path "*_fastqc.html", emit: html
     path "*_fastqc.zip", emit: zip

    script:
    """
    fastqc ${reads}
    """
}