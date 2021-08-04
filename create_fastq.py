from Bio import SeqIO
with open("092617YH515F-full.fasta", "rU") as f:
    with open("092617YH515F-full.qual", "rU") as q:
        SeqIO.write(SeqIO.QualityIO.PairedFastaQualIterator(f, q), "092617YH515F-full.fastq", "fastq")