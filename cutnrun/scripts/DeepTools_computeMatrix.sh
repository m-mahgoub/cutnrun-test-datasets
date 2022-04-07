#!/bin/sh

module load deeptools

macs_out=/data/mohamedmm/test/cutnrun/macs
dir=/data/mohamedmm/test/cutnrun/bigwig
out=/data/mohamedmm/test/cutnrun/matrix

computeMatrix reference-point --referencePoint center -R $macs_out/$1/$1_summits.bed \
--sortRegions descend \
-b 3000 -a 3000 \
-S \
$dir/input_rep1.bw \
$dir/input_rep2.bw \
$dir/t0_rep1.bw \
$dir/t0_rep2.bw \
$dir/t15_rep1.bw \
$dir/t15_rep2.bw \
-o $out/matrix.gz \
-p $(( SLURM_CPUS_PER_TASK - 1 )) \
--missingDataAsZero --skipZeros