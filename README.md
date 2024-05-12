# Healthcare Worker Sample Size Calculation

This repository contains an R script for calculating the sample size needed for a study on healthcare workers across various regions in Somalia. The project utilizes data from the Ministry of Health Somalia, Health Workforce Report.

## Repository Contents

- `sample_size_calculation.R`: The R script that performs the sample size calculation.

## Data Source
The data used in this study comes from the Ministry of Health Somalia, specifically their Health Workforce Report, which details the distribution of healthcare workers across various regions.

## Statistical Parameters

- **Confidence Level**: 95% (Z-score = 1.96)
- **Estimated Proportion**: 50% (to maximize the variance for the sample size calculation)
- **Margin of Error**: 3%
- **Non-response Rate**: 10%

## Running the Script
To run this script, you will need R installed on your computer. You can download it from [The Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/).

Once R is installed, you can run the script in RStudio or any R environment by opening the script file and running the code.

## Methodology
The script calculates the initial sample size based on standard formulas for sample size calculation with finite population correction. It adjusts for a non-response rate and calculates the number of participants needed from each region to ensure proportional representation.
