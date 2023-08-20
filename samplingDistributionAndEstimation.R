# Sample data (replace this with your own data)
data <- c(78, 55, 68, 48, 65, 76, 57, 55, 65, 75, 51,
 61, 68, 67, 76, 78, 71, 56, 57, 67, 58, 51, 50, 77, 
 55, 48, 70, 55, 58, 70, 56, 52, 74, 61, 69, 76, 61, 
 68, 78, 57, 66, 66, 74, 66, 48, 73, 71, 70, 62, 74,
 50, 69, 75, 65, 48)

# Confidence level (e.g., 0.95 for 95% confidence interval)
confidence_level <- 0.95

# Calculate the sample mean and standard deviation
sample_mean <- mean(data)
sample_sd <- sd(data)

# Calculate the standard error
standard_error <- sample_sd / sqrt(length(data))

# Calculate the z-score for the desired confidence level
z_score <- qnorm((1 + confidence_level) / 2)

# Calculate the margin of error
margin_of_error <- z_score * standard_error

# Calculate the confidence interval
confidence_interval_lower <- sample_mean - margin_of_error
confidence_interval_upper <- sample_mean + margin_of_error

# Print the results
cat("Sample Mean:", sample_mean, "\n")
cat("Confidence Interval (Lower):", confidence_interval_lower, "\n")
cat("Confidence Interval (Upper):", confidence_interval_upper, "\n")

