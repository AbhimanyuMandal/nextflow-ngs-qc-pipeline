nextflow.enable.dsl = 2

include { FASTQC } from './modules/fastqc'
include { MULTIQC } from './modules/multiqc'

params.input = params.input ?: "test_data/*.fastq.gz"

workflow {

    reads = channel.fromPath(params.input)

    fastqc = FASTQC(reads)

    MULTIQC(fastqc.zip)
}