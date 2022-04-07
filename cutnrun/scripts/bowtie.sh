##### Bowtie2
in_dir=/data/mohamedmm/test/cutnrun/fastq
Bowtie2_Index=/data/mohamedmm/test/cutnrun/genomes/genome
bams=/data/mohamedmm/test/cutnrun/bams

(bowtie2 --local --very-sensitive-local --no-unal --no-mixed --no-discordant --phred33 -I 10 -X 700 -p 10 -x $Bowtie2_Index -1 $in_dir/$1.fastq.gz  -2 $in_dir/$2.fastq.gz | samtools view -u - | samtools sort - > $bams/$3.bam) 2>$bams/$3.log &&

# bowtie2 --local --very-sensitive-local --no-unal --no-mixed --no-discordant --phred33 -I 10 -X 700 -p 10 -x $Bowtie2_Index -1 $in_dir/$1.fastq.gz  -2 $in_dir/$2.fastq.gz | samtools view -u - | samtools sort - > $bams/$3.bam &&

samtools sort $bams/$3.bam -o $bams/$3.sorted.bam -@ 10 &&

samtools index $bams/$3.sorted.bam $bams/$3.sorted.bai &&

rm $bams/$3.bam
