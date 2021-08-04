qiime tools import \
--type MultipleedSingleEndBarcodeInSequence \
--input-path 092617YH515F-full.fastq.gz \
--output.path multiplexed-seqs.qza

qiime cutadapt demux-single \
--i-seqs multiplexed-seqs.qza \
--m-barcodes-file 092617YH515F-map_fix.txt \
--m-barcodes-column BarcodeSequence \
--p-error-rate 0 \
--o-per-sample-sequences demultiplexed-seqs.qza \
--o-untrimmed-sequences untrimmed.qza \
--verbose

qiime cutadapt trim-single \
--i-demultiplexed-sequences demultiplexed-seqs.qza \
--p-front CAGCMGCCGCGGTAA \
--p-error-rate 0 \
--o-trimmed-sequences trimmed.qza \
--verbose

qiime demux summarize \
--i-data trimmed.qza \
--o-visualization trimmed.qzv