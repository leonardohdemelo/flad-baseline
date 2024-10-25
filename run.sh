#!/bin/bash

# Define the datasets

datasets=("dataset/NF-BoT-IoT-v2-DDoS-downsample.csv.gz" "dataset/NF-CSE-CIC-IDS2018-v2-DDoS-downsample.csv.gz" "dataset/NF-ToN-IoT-v2-DDoS-downsample.csv.gz")

# Loop through each dataset and run the experiment
for dataset in "${datasets[@]}"; do
    echo "Running experiment with $dataset"
    python3 flad_main.py -c "$dataset"
done

echo "All experiments completed."