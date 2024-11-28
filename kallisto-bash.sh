#!/bin/bash

# Directory containing the files
DIRECTORY="rnaseq-mus-musculus-GSE240196"

# Loop over each file in the directory
for FILE in "$DIRECTORY"/*; do
    # Extract the base name of the file (without extension)
    BASENAME=$(basename "$FILE")
    # Create an output directory for each input file
    OUTPUT_DIR="kallisto-output/$BASENAME"
    mkdir -p "$OUTPUT_DIR"

    kallisto quant -i Mus_musculus.idx -l 200 -s 20 -o $OUTPUT_DIR --single $FILE

    mv "$OUTPUT_DIR/abundance.tsv" "$OUTPUT_DIR/$BASENAME.tsv"
    mv "$OUTPUT_DIR/abundance.h5" "$OUTPUT_DIR/$BASENAME.h5"
done
