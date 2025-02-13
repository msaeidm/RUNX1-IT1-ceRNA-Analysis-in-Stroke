# 02_DE_analysis.R
library(meta)
library(readr)

# Load merged data
data <- read_csv("data/merged_normalized_data.csv")

# Assume data contains columns for gene expression in LAA and control groups
# Example: gene, expression_LAA, expression_Control, sd_LAA, sd_Control, n_LAA, n_Control

# Compute standardized mean differences (SMD) for each gene
data <- data %>% mutate(SMD = (expression_LAA - expression_Control) / sqrt((sd_LAA^2 + sd_Control^2) / 2))

# Use meta-analysis for each gene (this is a simplified example)
meta_results <- metagen(TE = data$SMD, seTE = rep(0.2, nrow(data)), studlab = data$gene)

# Filter DE genes (p < 0.01 and |SMD| >= 0.5)
de_genes <- data %>% filter(p_value < 0.01 & abs(SMD) >= 0.5)
write_csv(de_genes, "results/tables/DE_genes.csv")
