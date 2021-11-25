#This set of functions exports the counts of the motif matrix to matrixmarket
#The input has to be an object of the SummarizedExperiment class
SummarizedExperimentMatrix2MM <- function(MMatrix,prefix,type='MotifMatrix'){
        ###prefix can be "temp/"
if (type=='MotifMatrix'){
    writeMM(MMatrix@assays@data@listData$deviations,paste(prefix,"matrix.mtx",sep=""))
    write(x = rownames(MMatrix@assays@data@listData$deviations),file = paste(prefix,"genes.tsv",sep=""))
    write(x = colnames(MMatrix@assays@data@listData$deviations),file = paste(prefix,"barcodes.tsv",sep=""))
    write.table(x = MMatrix@colData@listData, file = paste(prefix,"metadata.tsv",sep=""),
    quote=FALSE,sep="\t")
} else if (type=='GeneScoreMatrix'){
    writeMM(MMatrix@assays@data@listData$GeneScoreMatrix,paste(prefix,"matrix.mtx",sep=""))
    write(x = rownames(MMatrix@assays@data@listData$GeneScoreMatrix),file = paste(prefix,"genes.tsv",sep=""))
    write(x = colnames(MMatrix@assays@data@listData$GeneScoreMatrix),file = paste(prefix,"barcodes.tsv",sep=""))
    write.table(x = MMatrix@colData@listData, file = paste(prefix,"metadata.tsv",sep=""),
    quote=FALSE,sep="\t")
} else if (type=='PeakMatrix'){
    writeMM(MMatrix@assays@data@listData$PeakMatrix,paste(prefix,"matrix.mtx",sep=""))
    write(x = rownames(MMatrix@assays@data@listData$PeakMatrix),file = paste(prefix,"genes.tsv",sep=""))
    write(x = colnames(MMatrix@assays@data@listData$PeakMatrix),file = paste(prefix,"barcodes.tsv",sep=""))
    write.table(x = MMatrix@colData@listData, file = paste(prefix,"metadata.tsv",sep=""),
    quote=FALSE,sep="\t")
} else if (type=='ImputedMatrix'){
    writeMM(MMatrix,paste(prefix,"matrix.mtx",sep=""))
    write(x = colnames(MMatrix),file = paste(prefix,"barcodes.tsv",sep=""))
} else if (type=='GeneIntegrationMatrix'){
    writeMM(MMatrix@assays@data@listData$GeneIntegrationMatrix,paste(prefix,"matrix.mtx",sep=""))
    write(x = rownames(MMatrix@assays@data@listData$GeneIntegrationMatrix),file = paste(prefix,"genes.tsv",sep=""))
    write(x = colnames(MMatrix@assays@data@listData$GeneIntegrationMatrix),file = paste(prefix,"barcodes.tsv",sep=""))
    write.table(x = MMatrix@colData@listData, file = paste(prefix,"metadata.tsv",sep=""),
    quote=FALSE,sep="\t")
} else {
print("No matrix found \n")
}
}
