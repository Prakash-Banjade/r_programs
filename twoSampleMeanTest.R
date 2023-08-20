# Testing of hypothesis
# H0: µ1 = µ2
#   vs
# H1: µ1 != µ2


# Yields for Manure 1 and Manure 2
manure1 <- c(18, 20, 36, 50, 49, 36, 34, 49, 41)
manure2 <- c(29, 28, 26, 35, 30, 44, 46)

# Perform a two-sample t-test since the both size < 30
t_test_result <- t.test(manure1, manure2)

# Display the t-test results
cat("Two Sample t-test\n\n");
cat("p-value:", t_test_result$p.value, "\n")
cat("t-statistic:", t_test_result$statistic, "\n")
cat("Degrees of Freedom:", t_test_result$parameter, "\n")

# Check if the p-value is less than the significance level (0.05)
if (t_test_result$p.value < 0.05) {
  cat("Conclusion: There is a significant difference between the mean yields.\n")
} else {
  cat("Conclusion: There is no significant difference between the mean yields.\n")
}

# p-value = 0.5577696, α = 0.05
# Since p-value > 0.05, we accept H0.
