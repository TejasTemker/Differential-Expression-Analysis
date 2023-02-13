# Differential Expression Analysis of Alzheimer's Disease and Pathway Prediction

## Introduction 

Alzheimer's disease is a debilitating form of dementia that typically manifests itself in the elderly population, usually in the latter stages of one's
seventh decade of life. Despite extensive research, the exact cause of this incurable illness remains unknown, though it is believed to be influenced by a
combination of both genetic and environmental factors. 
In light of the significance of Alzheimer's disease and the current lack of effective treatments,our research aims to utilize Microarray technology to
identify the key genetic markers associated with the disease. Through the application of advanced bioinformatics methods applied to diverse omics datasets,
I hope to make substantial strides in understanding the complex pathology of Alzheimer's disease.
##datbases/Webserver used
●	GEO (Gene Expression Omnibus)
●	DAVID (Database for Annotation, Visualization, and Integrated Discovery)
●	TOPPFUN (Transcriptome, ontology, phenotype, proteome, and pharmacome annotations-based gene list functional enrichment analysis)
## Raw data selection 
The Raw data i.e., Gene expression datasets from GEO (Gene Expression Omnibus) database which is GSE138260 [16]. In this database, array- and sequence
based data are accepted. Tools are provided to help users query and download experiments and curated gene expression profiles. Differential expression
analysis of human brain samples with Alzheimer disease versus healthy control samples are taken using an Agilent custom expression microarray.
## Differential gene Expression Analysis
R programming supports the limma package of Affymetrix which was used to identify the differentially expressed genes. The analysis was performed between
Alzheimer’s disease and control (no disease) groups. By using these we obtained upregulated genes and downregulated genes which was the final output.
## Functional Enrichment Analysis
The Obtained results of R programming were upregulated and downregulated genes. The Upregulated genes were taken for functional enrichment analysis using
the webtools. The taken webtools were DAVID database and Topfunn Database.
The Database for Annotation, Visualization, and Integrated Discovery (DAVID) provides a comprehensive set of functional annotation tools for investigators
to understand the biological meaning behind large lists of genes. These tools are powered by the comprehensive DAVID Knowledgebase built upon the DAVID
Gene concept which pulls together multiple sources of functional annotations.
Topp Fun Database is a one-stop portal for gene list enrichment analysis and candidate gene prioritization based on functional annotations and protein
interactions network.The Upregulated genes were submitted, and the genes symbols were obtained from DAVID under Agilent Chip ID. These Gene symbols were in
turn submitted to ToppFun Database to get the Gene IDs. From these Gene IDs the ones which are related to the brain are considered. These brain related
gene IDs were submitted to the DAVID database under Official Gene Symbol to get the Kegg pathways.
## Results and Discussion
In the current study, we have predicted the analysis of Alzheimer’s genes. Using Meta analysis techniques to classify differential expression of genes
involved in Alzheimer’s of DNA methyltransferase 1, Myosin VA, Pvt1 oncogenes. The identification of genetic markers involved in diagnosis of Alzheimer's
disease in an early state using transcriptome specific cerebral cortex brain tissue to identify the differential expressed genes that acts as a potential
marker. The selected dataset contains ----- genes of 36 samples of which 19 controls and 17 disease samples. The selected samples are tested with two
different conditions based on diagnostic tests such as Mini Mental Status Examination (MMSE) and Neurofibrillary Tangle (NFT) scores across all 36 subjects
regardless of diagnosis. The quality control of datasets is the major concept of design and pre-process raw data that helps to identify differential gene
expression. Using different mean and median calculations of Bioconductor algorithms to predict pre-process the data to evaluate quality values that helps
to normalize the data. These tests help to identify differentially expressed genes present in transcriptional response that significantly correlated with
AD markers. 
<img width="483" alt="Picture1" src="https://user-images.githubusercontent.com/124534401/218498308-5bc092d0-c000-4653-a882-7a26ff334c6a.png">

## DNA methyltransferase 1(DNMT1)
This gene encodes an enzyme that transfers methyl groups to cytosine nucleotides of genomic DNA. This protein is the major enzyme responsible for
maintaining methylation patterns following DNA replication and shows a preference for hemi-methylated DNA. Methylation of DNA is an important component of
mammalian epigenetic gene regulation. Aberrant methylation patterns are found in human tumors and associated with developmental abnormalities. Variation in
this gene has been associated with cerebellar ataxia, deafness, and narcolepsy, and neuropathy, hereditary sensory, type IE. Alternative splicing results
in multiple transcript variants.
DNA methylation, one of the major epigenetic pathways, is a complex process performed by certain enzymes, such as DNMT1 and DNMT3B. 
Cysteine and methionine metabolism’s epigenetic processes have been implicated in syndromes related to neuropsychiatric disorders, but little is known
about the role of epigenetics in Alzheimer's disease (AD).


## Conclusion
From the above research we could identify that the following genes DNA methyltransferase 1, Myosin VA, Pvt1 oncogene were differentially expressed. The
gene DNMT1 was found being expressed in patients of Alzheimer's disease. The following gene DNMT1 can be used as functional biomarker for Alzheimer's 
