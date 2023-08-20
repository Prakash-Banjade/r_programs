# Memory capacity scores before and after training
before_training <- c(12, 14, 11, 8, 7, 10, 3, 0, 5, 6)
after_training <- c(15, 16, 10, 7, 5, 12, 10, 2, 3, 8)

# Perform a paired t-test
paired_t_test_result <- t.test(before_training, after_training, paired = TRUE)

# Display the paired t-test results
cat("Paired t-test\n\n")
cat("p-value:", paired_t_test_result$p.value, "\n")
cat("t-statistic:", paired_t_test_result$statistic, "\n")
cat("Degrees of Freedom:", paired_t_test_result$parameter, "\n")

# Check if the p-value is less than the significance level (e.g., 0.05)
if (paired_t_test_result$p.value < 0.05) {
  cat("Conclusion: The training was effective.\n")
} else {
  cat("Conclusion: The training was not effective.\n")
}

# p-value = 0.2055279 , α = 0.05
# Since p-value < 0.05, we don't accept H0.