# Varga-et-al_CompetitiveAbxRelease_SRA-upload
 Processing pipeline for SRA upload from raw data
 
2021-08-03: CYZ
	This folder is for my uploading sequences from Yiqi's long time series experiment (LTSE).
	I will be uploading the demuxed versions
	Barcodes will be trimmed. Original data is available upon request.

Transfer over & run these commands:
-------------------------------------

dos2unix yqltse_runonPACE1-40b.pbs

qsub yqltse_runonPACE1-40b.pbs

dos2unix yqltse_runonPACE41-87.pbs

qsub yqltse_runonPACE41-87.pbs

dos2unix yqltse_runonPACE89-132.pbs

qsub yqltse_runonPACE89-132.pbs

dos2unix yqltse_runonPACE133-175.pbs

qsub yqltse_runonPACE133-175.pbs

dos2unix yqltse_runonPACE177-220.pbs

qsub yqltse_runonPACE177-220.pbs

dos2unix yqltse_runonPACE221-262.pbs

qsub yqltse_runonPACE221-262.pbs
