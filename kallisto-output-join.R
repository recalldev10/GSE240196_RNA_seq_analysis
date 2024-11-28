library(readr)
library(dplyr)

# Directory containing the nested kallisto output directories
DIRECTORY <- "kallisto-output"

# List of directories under the main directory
dirs <- list.dirs(path = DIRECTORY, full.names = TRUE, recursive = FALSE)

# Create a list of kallisto .tsv output files based on the nested structure
files <- sapply(dirs, function(d) {
  file.path(d, paste0(basename(d), ".tsv"))
})

# Function to read in kallisto abundance.tsv and extract counts
read_kallisto <- function(file) {
  data <- read_tsv(file)
  counts <- data$est_counts
  names(counts) <- data$target_id
  return(counts)
}

# Read in data from all files
data_list <- lapply(files, read_kallisto)

# Sample names
sample_names <- sapply(dirs, function(d) {
  basename(d)
})

# Combine all data into a matrix
count_matrix <- do.call(cbind, data_list)
colnames(count_matrix) <- sample_names

# Write to a CSV file
write.csv(count_matrix, file = paste0(DIRECTORY, "/count_matrix.csv"), row.names = TRUE)
