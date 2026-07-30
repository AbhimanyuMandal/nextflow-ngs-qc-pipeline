process MULTIQC {

    publishDir "results/multiqc", mode: "copy"

    input:
    path fastqc_results

    output:
    path "multiqc_report.html"
    path "multiqc_data"

    script:
    """
    multiqc . -o .
    """
}