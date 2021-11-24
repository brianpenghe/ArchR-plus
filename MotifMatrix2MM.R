#This set of functions exports the counts of the motif matrix to matrixmarket
#The input has to be an object of the SummarizedExperiment class
MotifMatrix_to_MM <- function(MMatrix,prefix){
        ###prefix can be "temp/"
writeMM(MMatrix@assays@data@listData$deviations,paste(prefix,"matrix.mtx",sep=""))
write(x = rownames(MMatrix@assays@data@listData$deviations),file = paste(prefix,"genes.tsv",sep=""))
write(x = colnames(MMatrix@assays@data@listData$deviations),file = paste(prefix,"barcodes.tsv",sep=""))
write.table(x = MMatrix@colData@listData, file = paste(prefix,"metadata.tsv",sep=""),
quote=FALSE,sep="\t")
}
