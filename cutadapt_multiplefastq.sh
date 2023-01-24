cd data  # where all the data is stored in 

for i in *.fastq.gz;  do name=(`basename "$i" .fastq.gz`); cutadapt -a file:adapters.fasta -o ${name}_trimmed.fastq.gz $i; done

 ## not working 

trim_galore --paired --nextera data/db32_lib_13088AAB_TCCTGA_read1.fastq.gz data/db32_lib_13088AAB_TCCTGA_read2.fastq.gz

## narrowPeak filtering qvalue 

#### 0.01
for i in *.narrowPeak;  do name=(`basename "$i" .narrowPeak`); awk '$9 > 4.6' $i > ${name}_0.01.narrowPeak ; done


### 0.001
for i in *.narrowPeak;  do name=(`basename "$i" .narrowPeak`); awk '$9 > 6.9' $i > ${name}_0.001.narrowPeak ; done
