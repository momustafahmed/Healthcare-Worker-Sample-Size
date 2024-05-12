# Sample Size Calculation for Healthcare Workers in Somalia

# Defining the number of healthcare workers in each region
healthcare_workers <- c(
  Benadir = 4432,
  Hirshabelle = 3198,
  Galmudug = 879,
  Puntland = 2146,
  Southwest = 2713,
  Jubbaland = 2469,
  Somaliland = 3469
)

# Total number of healthcare workers
total_workers <- sum(healthcare_workers)

# Parameters for sample size calculation
Z <- 1.96  # Z-score for 95% confidence
p <- 0.50  # Proportion (50%)
E <- 0.03  # Margin of error (3%)
non_response_rate <- 0.10  # Non-response rate (10%)

# Initial sample size calculation without finite population correction
n0 <- (Z^2 * p * (1 - p)) / (E^2)

# Applying finite population correction
N <- total_workers
n <- n0 / (1 + (n0 - 1) / N)

# Adjusting for non-response rate
n_final <- n / (1 - non_response_rate)

# Calculating the proportion of healthcare workers in each region
proportions <- healthcare_workers / total_workers

# Calculating the number of participants from each region
sample_sizes <- round(n_final * proportions)

# Printing the final adjusted sample size and the sample sizes for each region
print(paste("Total sample size:", round(n_final)))
print("Sample sizes for each region:")
print(sample_sizes)