# GSE240196_RNA_seq_analysis

The purpose of this repository is to display my analysis and visualizations for the RNA-seq data produced by Professor Talley and Professor Campbell in their study titled "RNAseq of lymphocyte populations in Graft vs Host Disease"

## Introduction

This study investigates transcriptional differences in mouse T lymphocytes under various conditions, focusing on CD4+ and CD8+ T cells at different timepoints and activation states. The dataset (GSE240196) examines T cell populations at day 0 (baseline) and day 7, with additional analysis of FLICA (Fluorochrome Inhibitor of Caspases) status in CD8+ cells at day 7. FLICA staining indicates caspase activity, which is crucial in understanding T cell survival and function.
T cells play essential roles in adaptive immunity, with CD4+ cells primarily functioning as helper T cells and CD8+ cells as cytotoxic T cells. Understanding the transcriptional differences between these populations, especially during activation and in relation to caspase activity, can provide valuable insights into T cell biology and potential therapeutic targets. This analysis aims to identify differentially expressed genes (DEGs) and affected biological pathways between these cell populations, with particular attention to:

- Baseline differences between CD4+ and CD8+ T cells
- Changes in gene expression over time (Day 0 to Day 7)
- Impact of FLICA status on CD8+ T cell gene expression

## Methods

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

## Getting Started

### Dependencies

* Python (version 11.0 or higher)
* Kallisto (v0.46.1)
* R
* Raw RNA-seq data from t Ensembl Mouse Genome cnda folder
* Reference transcriptome (rnaseq-mus-musculus-GSE240196)
* Analysis performed by NetworkAnalyst.ca

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
