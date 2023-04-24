# -*- coding: utf-8 -*-
"""
Created on Mon Apr 24 10:53:57 2023

@author: Administrator
"""

bio_snpeff=pd.read_csv("D:/工作/工作总结/大叶杨/环境关联/new_inv/associated_bio_snpeff.txt",sep="\t")
bio_snpeff=bio_snpeff.iloc[:,[0,1,2,3,4]].drop_duplicates(inplace=False,keep='first')
snpeff=pd.read_csv("D:/工作/工作总结/大叶杨/环境关联/new/snpeff.txt",sep="\t",header=None)
maf_id=pd.read_csv("D:/工作/工作总结/大叶杨/环境关联/new/all_id.txt",sep="\t",header=None).iloc[:,0].to_list()
snpeff=snpeff[snpeff.iloc[:,2].isin(maf_id)]
snpeff=snpeff.iloc[:,[0,1,2,3,4]].drop_duplicates(inplace=False,keep='first')
snpeff_count=snpeff.iloc[:,4].value_counts()/6030762
bio_count=bio_snpeff.iloc[:,4].value_counts()/19955
