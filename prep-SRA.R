v.dirs = list.dirs()
v.dirs = v.dirs[grepl('/fasta-qual-mapping-files', v.dirs)]

v.colnames = c('#SampleID'
               ,'BarcodeSequence'
               , 'LinkerPrimerSequence'
               , 'BarcodeName'
               , 'ReversePrimer'
               , 'ProjectName'
               , 'Description')

sapply(v.dirs, function(x){
  mapping_in  = paste(x, '/092617YH515F-mapping.txt', sep='')
  mapping_out = paste(x, '/092617YH515F-map_fix.txt', sep='')
  
  temp = read.csv(mapping_in
                  , sep='\t'
                  , header = T)
  temp = as.data.frame(temp)
  colnames(temp) = v.colnames
  
  temp$BarcodeSequence = paste(temp$BarcodeSequence, 'GTGC', sep='')
  temp$LinkerPrimerSequence = 'CAGCMGCCGCGGTAA'
  temp[,ncol(temp)] = NULL
  
  write.table(temp, file = mapping_out, sep = '\t', na = '', quote = F, row.names = F)
  
})


