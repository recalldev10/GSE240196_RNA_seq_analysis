# GSE240196_RNA_seq_analysis

The purpose of this repository is to display my analysis and visualizations for the RNA-seq data produced by Professor Talley and Professor Campbell in their study titled "RNAseq of lymphocyte populations in Graft vs Host Disease"

## Introduction

This study investigates transcriptional differences in mouse T lymphocytes under various conditions, focusing on CD4+ and CD8+ T cells at different timepoints and activation states. The dataset (GSE240196) examines T cell populations at day 0 (baseline) and day 7, with additional analysis of FLICA (Fluorochrome Inhibitor of Caspases) status in CD8+ cells at day 7. FLICA staining indicates caspase activity, which is crucial in understanding T cell survival and function.
T cells play essential roles in adaptive immunity, with CD4+ cells primarily functioning as helper T cells and CD8+ cells as cytotoxic T cells. Understanding the transcriptional differences between these populations, especially during activation and in relation to caspase activity, can provide valuable insights into T cell biology and potential therapeutic targets. 

This analysis aims to identify differentially expressed genes (DEGs) and affected biological pathways between these cell populations, with particular attention to:

- Temporal transcriptional changes (Day 0 vs Day 7)
- CD4 vs CD8 cell type-specific signatures
- Impact of FLICA status on gene expression
- Pathway enrichment and biological process analysis

## Dataset
* 15 samples of mouse T cells
* CD4 and CD8 populations
* Time points: Day 0 (Control) and Day 7
* FLICA positive/negative status analysis
* 3 biological replicates per condition

## Methods

Analysis Pipeline:

* Raw RNA-seq data processed using Kallisto for transcript quantification
* Differential expression analysis performed using NetworkAnalyst.ca
* Quality control and normalization assessment
* Principal Component Analysis (PCA) for sample relationships
* Expression distribution analysis

RNA sequencing data was processed using a standardized computational pipeline. Raw sequencing reads were quantified using Kallisto (v0.46.1), which performs pseudoalignment against the Mus musculus reference transcriptome (GRCm39). Kallisto's ultrafast pseudoalignment algorithm was used to estimate transcript abundances, generating count data for each sample.
The resulting expression data was processed and analyzed using NetworkAnalyst.ca. Data preprocessing included:

Filtering of low-abundance transcripts (minimum count threshold: 4)
Removal of unannotated features
Application of variance filtering (threshold: 15)
Normalization using TMM (Trimmed Mean of M-values) method

Differential expression analysis was performed using the Limma package with robust trend adjustment. Comparisons were made between:

CD4+ vs CD8+ cells at Day 0 (baseline comparison)
CD8+ FLICA-positive vs FLICA-negative cells at Day 7
Time course analysis (Day 0 vs Day 7) for both CD4+ and CD8+ populations

Statistical significance was assessed using adjusted p-values (FDR < 0.05) and a minimum fold-change threshold of 1.5. Downstream analyses included pathway enrichment analysis and gene ontology (GO) term analysis to identify biological processes affected by the observed transcriptional changes.

## Applications
This work provides insights into T cell biology, activation dynamics, and cell-type specific transcriptional programs, relevant for immunology research and therapeutic development.

## Getting Started

### Dependencies

* Python (version 11.0 or higher)
* Kallisto (v0.46.1)
* R (v4.4.2)

### 

### Notable Files

* the zipped file Download.zip is the result of a multitude of analyses done by NetworkAnalyst.ca
* count_martix.csv and count_martix.txt (tab delimited) are the count data from kallisto
* the summary report gives interpretation to key plots
* kallisto-bash.sh are instruction for quantification of abudnances
* kallisto-output-join.R run to join results 

## Help

For help, refer to the project documentation or contact Preetham Bandla.

## Authors

Preetham Bandla
[recalldev10](https://github.com/recalldev10)
pbandla2020@gmail.com

## Version History

1.0 – Initial release 

## License

No license

## Acknowledgments

Special thanks to Dr. Attallah for guidance and support in Computational Methods
