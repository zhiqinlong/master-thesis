# -*- coding: utf-8 -*-
"""
Created on Wed May 17 10:48:14 2023

@author: Administrator
"""

import os
from Bio import SeqIO
import re
file_path="D:/工作/工作总结/大叶杨/实验/ZSP1912-L.LG.fasta"
ids=[]
seqs=[]
for record in SeqIO.parse(file_path,'fasta'):
    ids.append(record.id)
    seqs.append(str(record.seq))
dicts_LG = dict(zip(ids,seqs))
def complement(seq):
    return seq.translate(str.maketrans('ACGT','TGCA'))
gff=open('D:/工作/工作总结/大叶杨/实验/luck.gff','r')
lines=gff.readlines()
gff.close()
f1=open('experiments_seq_up2kb.txt','w')
for line in lines:
    line = line.strip()
    lists=line.split()
    chrs=lists[0]
    start=int(lists[3])-1
    end=int(lists[4])
    strand=lists[6]
    gene=re.split("=|;",lists[8])[1]
    seq=dicts_LG[chrs][start:end]
    if strand=="-":
        seq_rev=complement(seq)[::-1]
        end_rev=end-seq_rev.find('ATG')+2000
        seq=dicts_LG[chrs][start:end_rev]
        seq_final=seq[::-1] 
    else:
       start_plus=start+seq.find('ATG')-2000
       seq_final=dicts_LG[chrs][start_plus:end]
    f1.write('>'+gene+'('+strand+')'+'\n')
    f1.write(seq_final+'\n')
f1.close()
