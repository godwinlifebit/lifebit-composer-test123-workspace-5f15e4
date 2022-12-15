nextflow.enable.dsl=2

include { downsample_1 } from './modules/downsample_1/module.nf'
include { gunzip_1 } from './modules/gunzip_1/module.nf'

workflow {
input1 = Channel.fromPath(params.downsample_1.fastq)
downsample_1(input1)
gunzip_1(downsample_1.out.output1)
}
