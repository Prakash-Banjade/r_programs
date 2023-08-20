# Testing of hypothesis:
# H0: md1 = md2
#      vs
# H1: md1 != md2

# Ages of male and female employees
male <- c(35, 43, 26, 44, 40, 42, 33, 38, 25, 26)
female <- c(30, 41, 34, 31, 36, 32, 25, 47, 28, 24)

# Perform a Mann-Whitney U test
mann_whitney_test_result <- wilcox.test(male, female, alternative = "two.sided")

# Display the Mann-Whitney U test results
cat("Mann-Whitney U test\n\n")
cat("p-value:", mann_whitney_test_result$p.value, "\n")
cat("U statistic:", mann_whitney_test_result$statistic, "\n")

# Check if the p-value is less than the significance level (e.g., 0.1)
if (mann_whitney_test_result$p.value < 0.1) {
  cat("Conclusion: There is a significant difference in ages between male and female employees.\n")
} else {
  cat("Conclusion: There is no significant difference in ages between male and female employees.\n")
}

# p-value = 0.4053256, α = 0.1
# Since p-value > α, we accept H0.