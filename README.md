# RUNX1-IT1-ceRNA-Analysis-in-Stroke

This repository hosts the code and supporting files for the bioinformatics and statistical analysis presented in the article:

**Study and Characterization of Long Non-coding RUNX1-IT1 among Large Artery Atherosclerosis Stroke Patients Based on the ceRNA Hypothesis**

The code covers:
- **Data Preprocessing:** Collecting and normalizing GEO gene expression profiles for mRNAs, miRNAs, and lncRNAs.
- **Differential Expression Analysis:** Identifying differentially expressed (DE) genes using meta-analysis (Meta v4.9 in R).
- **Interaction Analysis:** Retrieving experimentally validated and predicted miRNA-mRNA and miRNA-lncRNA interactions.
- **ceRNA Network Construction:** Merging interactions and computing Pearson correlations to build the RUNX1-IT1–miRNA–mRNA regulatory network.
- **Statistical Analysis:** Performing logistic regression, ROC curve analysis, and meta-analysis to assess the diagnostic/prognostic value of RUNX1-IT1.

## Repository Structure

