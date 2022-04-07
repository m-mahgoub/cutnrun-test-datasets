#! /bin/bash

bams=/data/mohamedmm/test/cutnrun/bams
out=/data/mohamedmm/test/cutnrun/bigwig
black_list=/data/mohamedmm/test/cutnrun/assets/blacklist.bed

bamCoverage --bam $bams/$1.sorted.bam -o $out/$1.bw \
--blackListFileName $black_list \
--binSize 10 \
--normalizeUsing RPKM \
--extendReads \
-p $(( SLURM_CPUS_PER_TASK - 2 )) \
--ignoreDuplicates










