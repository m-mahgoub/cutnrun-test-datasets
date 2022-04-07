
module load deeptools

out=/data/mohamedmm/test/cutnrun/matrix

plotHeatmap -m $out/matrix.gz -out $out/heatmap.svg --yMin 0  --refPointLabel "Center" --heatmapHeight 27 --heatmapWidth 9 --colorMap pink_r --plotFileFormat "svg" --perGroup
