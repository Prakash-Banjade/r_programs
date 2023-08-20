# Testing of hypothesis
# H0: md1 = md2 = md3 = md4
#          vs
# H1: atleast one mdi is significantly different, i = 1, 2, 3, 4


# Create a data frame with the given data
data <- data.frame(
  Hospital = rep(c("A", "B", "C", "D"), each = 4),
  Season = rep(c("Winter", "Spring", "Summer", "Fall"), times = 4),
  Births = c(92, 72, 94, 77, 15, 16, 10, 17, 58, 71, 51, 62, 19, 26, 20, 18)
)

# Perform the Friedman test
friedman_test_result <- friedman.test(Births ~ Season | Hospital, data = data)

# Display the Friedman test results
cat("Friedman Test\n\n")
cat("p-value:", friedman_test_result$p.value, "\n")
cat("Chi-squared statistic:", friedman_test_result$statistic, "\n")
cat("Degrees of Freedom:", friedman_test_result$parameter, "\n")

# Check if the p-value is less than the significance level (e.g., 0.05)
if (friedman_test_result$p.value < 0.05) {
  cat("Conclusion: There is a significant difference in birth rates across the seasons.\n")
} else {
  cat("Conclusion: There is no significant difference in birth rates across the seasons.\n")
}


# since p-value = 0.8254278 > α = 0.05, accept H0
