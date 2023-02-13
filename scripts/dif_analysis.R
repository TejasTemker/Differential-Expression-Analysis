targets <- readTargets("data/GSE138260_RAW/targets.txt/GSM4103884_253487910049_201110211159_K20_S01_GE1_107_Sep09.txt")
raw = read.maimages(targets, source="agilent",green.only=TRUE)
raw_BGcorrected = backgroundCorrect(raw, method="normexp", offset=16)
raw_BGandNormalized = normalizeBetweenArrays(raw_BGcorrected,method="quantile")
raw_aver = avereps(raw_BGandNormalized,ID=raw_BGandNormalized$genes$ProbeName)
boxplot(log(as.matrix(raw_BGcorrected)),las=2,ylab="Log2(Intensity)")
boxplot(as.matrix(raw_BGandNormalized), las=2, ylab = "Log2(Intensity)")
barplot(as.matrix(my.dataM), main=title, legend=rownames, col=c(my.dataColour)
f = factor(targets$State)
design = model.matrix(~f)
design = cbind(AD = c(1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),   
                          Control = c(0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0))
fit = lmFit(raw_aver, design)
contrastMatrix = makeContrasts("AD-Control", levels=design)
fit2 = contrasts.fit(fit, contrastMatrix)
fit2 = eBayes(fit2)
topTable(fit2, coef = "AD-Control")   # The ten top significants in CBL vs CSL.
        
# The significant hits based on adjusted p-value for the comparison CBL vs CSL:   
sig = length(which(topTable(fit2, coef = "AD-Control",number=973705)[,15]<0.05)) 
signif = topTable(fit2, coef = "AD-Control",number=sig)
upregulated = signif[which(signif[,11]>0.05),]   # The upregulated hits in CBL.
downregulated = signif[which(signif[,11]<0.05),]  # The downregulated ones.
# Save them in different files for future annotation or functional cluster
# analysis:
write.table(upregulated, "AD_Control_Upre.txt", sep="\t")
write.table(downregulated, "AD_Control_Downre.txt", sep="\t")