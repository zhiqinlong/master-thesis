
for chr in LG{01..19}
do
	#cp data/sample_info.tsv $chr/data 
#	cp sample_info.tsv data
#	echo "cp /usr_storage/lzq/work/dyy/local_adaption/env_filt/snp/$chr.recode.vcf   data&"
	echo "bgzip data/$chr.recode.vcf && bcftools index data/$chr.recode.vcf.gz &"
done
	#echo " Rscript run_lostruct.R -i data --nmds 10  -t snp -s 250 -I data/sample_info.tsv &"
	dir=`ls .//lostruct_results/|grep '250_weights'`
#	cp ./$chr/lostruct_results/$dir/figure/run_summary/plot_corners-1.pdf ./SNP_300/$chr.corners.pdf
#	cp ./$chr/lostruct_results/$dir/figure/run_summary/plot_corner_pca-1_1_2.pdf ./temp/$chr.pca.pdf
for i in $(seq 3 2 30)
do
	cp summarize_run1.Rmd summarize_run$i.Rmd
	sed -i "s/lzqpc1=pc1/lzqpc1=$i/g" summarize_run$i.Rmd
	sed -i "s/lzqpc2=pc2/lzqpc2=$(($i+1))/g" summarize_run$i.Rmd

#	echo "Rscript -e 'templater::render_template(\"summarize_run$i.Rmd\",output=\"lostruct_results/$dir/run_summary_$i.html\",change.rootdir=TRUE,envir=environment())'  &"
cp lostruct_results/$dir/figure/run_summary_$i/plot_corner_pca-1.png temp/$i.pca.png
cp lostruct_results/$dir/figure/run_summary_$i/plot_corners-1.png temp/$i.png
done
#	echo "paste -d ',' $chr/lostruct_results/$dir/$chr.regions.csv <(cut -d "," -f 3,4,5 $chr/lostruct_results/$dir/mds_coords.csv ) >$chr.csv &"
#	sed -i "s/\"//g" $chr.csv 

