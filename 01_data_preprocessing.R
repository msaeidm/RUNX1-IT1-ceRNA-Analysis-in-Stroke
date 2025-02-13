# 01_data_preprocessing.R
# Load necessary libraries
library(readr)
library(dplyr)

# Define the path to GEO datasets
data_files <- list.files("data/GEO_datasets", pattern = "\\.csv$", full.names = TRUE)

# Read and normalize datasets (log2 transformation)
normalize_data <- function(file) {
  data <- read_csv(file)
  data_normalized <- data %>% mutate(across(where(is.numeric), ~ log2(. + 1)))
  return(data_normalized)
}

normalized_list <- lapply(data_files, normalize_data)

# Optionally merge datasets if needed
merged_data <- Reduce(function(x, y) full_join(x, y, by = "GeneSymbol"), normalized_list)

# Save the merged normalized data
write_csv(merged_data, "data/merged_normalized_data.csv")
