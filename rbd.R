# Following table gives the result of the experiment on four varieties of crop in 5 blocks of plot. Analyze the result to test whether there is significant difference between yields of four varieties:

# Block1: A:32, B:33, D:30, A:35, C36
# Block2: B:34, C:34, C:35, C:32, D:29
# Block3: C:31, A:34, B:36, B:37, A:37
# Block4: D:29, D:26, A:33, D:28, B35


# Create a data frame with the correct data structure
data <- data.frame(
  Variety = rep(c("A", "B", "D", "C"), times = 5),
  Yield = c(32, 33, 30, 35, 36, 34, 34, 35, 32, 29, 31, 34,
   36, 37, 37, 29, 26, 33, 28, 35)
)

# Perform one-way ANOVA
anova_result <- aov(Yield ~ Variety, data = data)

# Print the summary of the ANOVA result
anova_summary <- summary(anova_result)
print(anova_summary)

# Retrieve and display the p-value
p_value <- anova_summary[[1]]["Variety", "Pr(>F)"]
cat("P-value:", p_value, "\n")

# Determine significance based on the p-value
if (p_value < 0.05) {
  cat("There is a significant difference in yields 
  among the crop varieties.\n")
} else {
  cat("There is no significant difference in yields
   among the crop varieties.\n")
}
