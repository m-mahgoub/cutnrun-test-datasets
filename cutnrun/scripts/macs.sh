#! /bin/bash

bams=/data/mohamedmm/test/cutnrun/bams
macs_out=/data/mohamedmm/test/cutnrun/macs


macs2 callpeak -t $bams/$1.sorted.bam -c $bams/$2.sorted.bam -n $1 --outdir $macs_out/$1 -f "BAMPE" --call-summits -p 0.0001