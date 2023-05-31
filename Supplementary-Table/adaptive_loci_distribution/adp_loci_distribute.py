# -*- coding: utf-8 -*-
"""
Created on Wed Nov 16 17:11:28 2022

@author: Administrator
"""

adp_bed=pd.read_csv('D:/工作/工作总结/大叶杨/环境关联/new_inv/all_lfmm_gemma_loci_5e2.bed',sep='\t',header=None)

temperature=['bio1','bio2','bio3','bio4','bio5','bio6','bio7','bio8','bio9','bio10','bio11']
percipitation=['bio12','bio13','bio14','bio15','bio16','bio17','bio18','bio19']
adp_loci_distribute=open('D:/工作/工作总结/大叶杨/环境关联/new_inv/adp_loci_distribute.txt','w')
adp_loci_distribute.write('snp\tchr\tpos\tethnicity\tcolorgroup\n')
for row in adp_bed.iterrows():
    if 'INDEL' in row[1][3]:
        ethnicity='INDEL'
    elif ':' in row[1][3]:
        ethnicity='SNP'
    else:
        ethnicity='SV'
    t=[i for i in id_cor_bio[row[1][3]] if i in temperature]
    p=[i for i in id_cor_bio[row[1][3]] if i in percipitation]
    if len(t)==0 and len(p)==0:
        colorgroup='other'
    elif len(t)==0 and len(p)!=0:
        colorgroup='temperature'
    elif len(t)!=0 and len(p)==0:
        colorgroup='percipitation'
    else:
        colorgroup='both'
    outline=row[1][3]+'\t'+row[1][0]+'\t'+str(row[1][1])+'\t'+ethnicity+'\t'+colorgroup
    adp_loci_distribute.write(outline+'\n')
    
    
adp_loci_distribute.close()
    