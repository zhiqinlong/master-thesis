#####yiyang
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/yy_dyy_divergence.txt",sep="\t",header=F)
div$type='div'
bal=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/yy_dyy_balance.txt",sep="\t",header=F)
bal$type='bal'
bac=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/yy_dyy_background.txt",sep="\t",header=F)
bac$type='bac'
bac1=bac[sample(1:nrow(bac),185, replace = FALSE),]
dxy_yy=rbind(div[,c(6,11)],bal[,c(6,11)],bac1[,c(6,11)])
dxy_yy$type=factor(dxy_yy$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/dyy_yy_dxy.pdf',width=3,height=3)
ggplot(dxy_yy,aes(x=type,y=V6))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bac','div')),label ="p.signif")
dev.off()


############
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.west_tajimad.txt",sep="\t",header=F)
div$type='div'
bal=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.west_tajimad.txt",sep="\t",header=F)
bal$type='bal'
bac=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.west_tajimad.txt",sep="\t",header=F)
bac$type='bac'
we_tajimad=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
we_tajimad$type=factor(we_tajimad$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/west_tajimad.pdf',width=3,height=3)
ggplot(we_tajimad,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
##########
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.east_tajimad.txt",sep="\t",header=F)
div$type='div'
bal=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.east_tajimad.txt",sep="\t",header=F)
bal$type='bal'
bac=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.east_tajimad.txt",sep="\t",header=F)
bac$type='bac'
ea_tajimad=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
ea_tajimad$type=factor(ea_tajimad$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/east_tajimad.pdf',width=3,height=3)
ggplot(ea_tajimad,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
################
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.tajimad.txt",sep="\t",header=F)
div$type='div'
bal=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.tajimad.txt",sep="\t",header=F)
bal$type='bal'
bac=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.tajimad.txt",sep="\t",header=F)
bac$type='bac'
tajimad=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
tajimad$type=factor(tajimad$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/tajimad.pdf',width=3,height=3)
ggplot(tajimad,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
##################
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/fst_localpca_divergence.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/fst_localpca_balance.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/fst_localpca_background.txt',sep="\t",header=F)
bac$type='bac'
library(ggpubr)
fst=rbind(div[,c(6,8)],bal[,c(6,8)],bac[,c(6,8)])
fst$type=factor(fst$type,levels=c("bal","bac","div"))

pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/fst.pdf',width=3,height=3)
ggplot(fst,aes(x=type,y=V6))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()

div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/dxy_localpca_divergence.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/dxy_localpca_balance.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/dxy_localpca_background.txt',sep="\t",header=F)
bac$type='bac'
library(ggpubr)
dxy=rbind(div[,c(6,11)],bal[,c(6,11)],bac[,c(6,11)])
dxy$type=factor(dxy$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/dxy1.pdf',width=3,height=3)
ggplot(dxy,aes(x=type,y=V6))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
###########
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.xpclr.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.xpclr.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.xpclr.txt',sep="\t",header=F)
bac$type='bac'
xpclr=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
xpclr$type=factor(xpclr$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/xpclr.pdf',width=3,height=3)
ggplot(xpclr,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
#######
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.east_clr.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.east_clr.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.east_clr.txt',sep="\t",header=F)
bac$type='bac'
#bac=bac[sample(nrow(bac),3000),]
west_clr=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
west_clr=west_clr[west_clr["V7"]<50,]
west_clr$type=factor(west_clr$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/east_clr.pdf',width=3,height=3)
ggplot(west_clr,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
############
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.east_clr.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.east_clr.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.east_clr.txt',sep="\t",header=F)
bac$type='bac'
bac=bac[sample(nrow(bac),3000),]

east_clr=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
east_clr$type=factor(east_clr$type,levels=c("bal","bac","div"))
east_clr=east_clr[east_clr["V7"]<50,]

pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/east_clr1.pdf',width=3,height=3)
ggplot(east_clr,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()

######
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/pi_localpca_divergence.west.pi.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/pi_localpca_balance.west.pi.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/pi_localpca_background.west.pi.txt',sep="\t",header=F)
bac$type='bac'
west_pi=rbind(div[,c(5,10)],bal[,c(5,10)],bac[,c(5,10)])
west_pi$type=factor(west_pi$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/west_pi1.pdf',width=3,height=3)
ggplot(west_pi,aes(x=type,y=V5))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/pi_localpca_divergence.east.pi.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/pi_localpca_balance.east.pi.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/pi_localpca_background.east.pi.txt',sep="\t",header=F)
bac$type='bac'
east_pi=rbind(div[,c(5,10)],bal[,c(5,10)],bac[,c(5,10)])
east_pi$type=factor(east_pi$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/east_pi.pdf',width=3,height=3)
ggplot(east_pi,aes(x=type,y=V5))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()
#############
div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.east_beta.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.east_beta.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.east_beta.txt',sep="\t",header=F)
bac$type='bac'
bac=bac[sample(nrow(bac),10000),]

east_beta=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
east_beta$type=factor(east_beta$type,levels=c("bal","bac","div"))
east_beta=east_beta[east_beta["V7"]!=".",]
east_beta["V7"]=as.numeric(east_beta$V7)
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/east_beta.pdf',width=3,height=3)
ggplot(east_beta,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()

div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.west_beta.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.west_beta.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.west_beta.txt',sep="\t",header=F)
bac$type='bac'
west_beta=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
west_beta$type=factor(west_beta$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/west_beta.pdf',width=3,height=3)
ggplot(west_beta,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()

div=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/divergence.west_tajimad.txt",sep="\t",header=F)
div$type='div'
bal=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/balance.west_tajimad.txt',sep="\t",header=F)
bal$type='bal'
bac=read.csv('D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/background.west_tajimad.txt',sep="\t",header=F)
bac$type='bac'
bac=bac[sample(nrow(bac),10000),]
west_tajimad=rbind(div[,c(7,8)],bal[,c(7,8)],bac[,c(7,8)])
west_tajimad$type=factor(west_tajimad$type,levels=c("bal","bac","div"))
pdf('D:/工作/工作总结/大叶杨/选择检测/local_PCA/west_beta.pdf',width=3,height=3)
ggplot(west_tajimad,aes(x=type,y=V7))+
  geom_boxplot(aes(col=type),outlier.colour = NA)+
  theme_test()+
  stat_compare_means(method = 'wilcox.test', comparisons = list(c('bal','bac'),c('bal','div'),c('bac','div')),label ="p.signif")
dev.off()

################折线图
######################
######################
library(ggplot2)
library(ggalt)
library(ggpubr)
windows=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/GO/divergence_gene.txt",sep='\t',header=F)
e_beta=read.table("D:/工作/工作总结/大叶杨/选择检测/平衡选择/1kb.east.beta.txt",header=F)
w_beta=read.table("D:/工作/工作总结/大叶杨/选择检测/平衡选择/1kb.west.beta.txt",header=F)
e_beta['type']='east'
w_beta['type']='west'
beta=rbind(e_beta,w_beta)
beta=beta[beta['V4']!=".",]
beta$V4=as.numeric(beta$V4)
mean_beta=mean(beta$V4)

#
fst=read.table("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/1kb.fst.txt")
fst["V2"]=as.vector(sapply(fst$V2,as.numeric))
fst["V4"]=as.vector(sapply(fst$V4,as.numeric))
fst=na.omit(fst)
fst_mean=mean(fst$V4)
#
xpclr=read.table("D:/工作/工作总结/大叶杨/选择检测/xpclr/all.xpclr")
xpclr["V2"]=as.vector(sapply(xpclr$V2,as.numeric))
xpclr["V4"]=as.vector(sapply(xpclr$V4,as.numeric))
xpclr=na.omit(xpclr)
#
e_pi=read.table("D:/工作/工作总结/大叶杨/选择检测/evidence/1kb.eastern.pi.txt",header=F)
w_pi=read.table("D:/工作/工作总结/大叶杨/选择检测/evidence/1kb.western.pi.txt",header=F)
e_pi['type']='east'
w_pi['type']='west'
pi=rbind(e_pi,w_pi)
pi=pi[pi["V4"]!=".",]
pi=na.omit(pi)
pi_mean=mean(pi$V4)
#
w_clr=read.table("D:/工作/工作总结/大叶杨/选择检测/CLR/western.clr.sweep",header=F)
e_clr=read.table("D:/工作/工作总结/大叶杨/选择检测/CLR/eastern.clr.sweep",header=F)
w_clr=w_clr[w_clr["V4"]!=".",]
e_clr['type']='east'
e_clr=e_clr[e_clr["V4"]!=".",]
w_clr['type']='west'
w_clr["V4"]=as.vector(sapply(w_clr$V4,as.numeric))
e_clr["V4"]=as.vector(sapply(e_clr$V4,as.numeric))
clr=rbind(e_clr,w_clr)
mean_clr=mean(clr$V4)
#####
e_tajimad=read.table("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/1kb.eastern.Tajima.D.txt",header=F)
w_tajimad=read.table("D:/工作/工作总结/大叶杨/选择检测/local_PCA/evidence/1kb.western.Tajima.D.txt",header=F)
e_tajimad['type']='east'
w_tajimad['type']='west'
tajimad=rbind(e_tajimad,w_tajimad)
##

p1=ggplot(beta[beta["V1"]==chr,],aes(x=V2/1000000,y=V4,color=type))+xlim(c(s_ex,e_ex))+
  geom_xspline(spline_shape=0.8,size=2)+
  theme_classic()+xlab(chr)+
  geom_hline(yintercept = mean_beta,linetype="dashed")+ylab("beta")+
  theme(axis.text.x = element_text(color="black", size=12),
        axis.text.y = element_text(color="black", size=12),
        axis.title.x = element_text(color="black", size=15),
        axis.title.y = element_text(color="black", size=15))+
  guides(colour = "none")
for (i in 1:nrow(windows)){
  chr=windows[i,1]
  s=windows[i,2]/1000000
  e=windows[i,3]/1000000
  chr='LG14'
  s=13450758/1000000
  e=13462130/1000000
  s_ex=s-25000/1000000
  e_ex=e+20000/1000000
  p1=ggplot(clr[clr["V1"]==chr,],aes(x=V2/1000000,y=V4,color=type))+xlim(c(s_ex,e_ex))+
    geom_xspline(spline_shape=0.5,size=2)+
    theme_classic()+xlab("clr")+
    geom_hline(yintercept = mean_clr,linetype="dashed")+ylab("clr")+
    theme(axis.text.x = element_text(color="black", size=12),
          axis.text.y = element_text(color="black", size=12),
          axis.title.x = element_text(color="black", size=15),
          axis.title.y = element_text(color="black", size=15))+
    guides(colour = "none")
  
#########
##################
#########
p2=ggplot(fst[fst["V1"]==chr,],aes(x=V2/1000000,y=V4))+xlim(c(s_ex,e_ex))+
  geom_xspline(col="grey",spline_shape=0.5,size=2)+
  theme_classic()+xlab("")+
  geom_hline(yintercept = fst_mean,linetype="dashed")+ylab("fst")+
  theme(axis.text.x = element_text(color="black", size=12),
        axis.text.y = element_text(color="black", size=12),
        axis.title.x = element_text(color="black", size=15),
        axis.title.y = element_text(color="black", size=15))
#############
p3=ggplot(tajimad[tajimad["V1"]==chr,],aes(x=V2/1000000,y=V4,color=type))+xlim(c(s_ex,e_ex))+
  geom_xspline(spline_shape=0.5,size=2)+
  theme_classic()+xlab("")+
  geom_hline(yintercept = 0,linetype="dashed")+ylab("tajimad")+
  theme(axis.text.x = element_text(color="black", size=12),
        axis.text.y = element_text(color="black", size=12),
        axis.title.x = element_text(color="black", size=15),
        axis.title.y = element_text(color="black", size=15))+
  guides(colour = "none")
###########pi
p4=ggplot(pi[pi["V1"]==chr,],aes(x=V2/1000000,y=V4,color=type))+xlim(c(s_ex,e_ex))+
  geom_xspline(spline_shape=0.5,size=2)+
  theme_classic()+xlab("")+
  geom_hline(yintercept = pi_mean,linetype="dashed")+ylab("pi")+
  theme(axis.text.x = element_text(color="black", size=12),
        axis.text.y = element_text(color="black", size=12),
        axis.title.x = element_text(color="black", size=15),
        axis.title.y = element_text(color="black", size=15))+
  guides(colour = "none")


out_path=paste("D:/工作/工作总结/大叶杨/选择检测/local_PCA/分布/div_",chr,"-",s,"-",e,".pdf",sep="")
p5=ggarrange(p1,p2,p3,p4,ncol=1,nrow=4)
p5
ggsave(out_path,p5,width=10,height=10)
}
##############
library('gggenes')
library('ggplot2')
genes=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/分布/LG14_13425760_gene.csv")
subgenes=read.csv("D:/工作/工作总结/大叶杨/选择检测/local_PCA/分布/LG14_13425760_subgene.csv")
pdf("D:/工作/工作总结/大叶杨/选择检测/local_PCA/分布/LG14_13425760.pdf",width=10,height=3)
ggplot(genes, aes(xmin = start, xmax = end, y = molecule,forward=direction)) +
  facet_wrap(~ molecule, scales = "free", ncol = 1) +
  geom_gene_arrow(fill = "white") +
  geom_subgene_arrow(data = subgenes,
                     aes(xmin = start, xmax = end, y = molecule, fill = subgene,forward=direction,
                         xsubmin = from, xsubmax = to), color="black", alpha=.7) +
  geom_subgene_label(data =genes,aes(xsubmin = start, xsubmax = end, label = gene))+
  theme_genes()  

dev.off()
w_clr=read.table("D:/工作/工作总结/大叶杨/选择检测/CLR/western.clr.sweep",header=F)
e_clr=read.table("D:/工作/工作总结/大叶杨/选择检测/CLR/eastern.clr.sweep",header=F)
w_clr=w_clr[w_clr["V4"]!=".",]
e_clr['type']='east'
e_clr=e_clr[e_clr["V4"]!=".",]
w_clr['type']='west'
w_clr["V4"]=as.vector(sapply(w_clr$V4,as.numeric))
e_clr["V4"]=as.vector(sapply(e_clr$V4,as.numeric))
clr=rbind(e_clr,w_clr)
pdf("D:/工作/工作总结/大叶杨/选择检测/local_PCA/分布/div.CLR.TIC.pdf",width=6,height=2)
ggplot(clr[clr["V1"]=="LG08",],aes(x=V2/1000000,y=V4,color=type))+xlim(c(10.50,10.6))+
  geom_xspline(spline_shape=0.5,size=2)+
  theme_classic()+xlab("clr")+
  geom_vline(xintercept = c(10.545788,10.564216),linetype="dashed")+ylab("xpclr")+
  theme(axis.text.x = element_text(color="black", size=12),
        axis.text.y = element_text(color="black", size=12),
        axis.title.x = element_text(color="black", size=15),
        axis.title.y = element_text(color="black", size=15))
dev.off()
