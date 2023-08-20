# A developer of food for pig wish to determine what relationship exists among 'age of a pig'
# when it starts receiving a newly developed food supplement, the initial weight of the pig 
# and the amount of weight it gains in a week period with the food supplement. The following 
# information is the result of study of eight piglets:

# Piglet Number = 1, 2, 3, 4, 5, 6, 7, 8 
# Initial weight(x1) = 39, 52, 49, 46, 61, 35, 25, 55
# Initial age(x2) = 8, 6, 7, 12, 9, 6, 7, 4
# weight gained(y) = 7, 6, 8, 10, 9, 5, 3, 4

# 1. Determine the least square equation that best describes these three variables.
# 2. Calculate the standard error.
# 3. How much gain in weight of a pig in a week can we expect with the food supplement if 
#    it were 9 weeks old and weighted 48 pounds?
# 4. Test the significance of regression coefficients and overall fit of the regression equation.
# 5. Calculate the residual analysis.
# 6. Determine the partial correlation, multiple correlation and coefficient of multiple 
#    determination. Interpret.


# <---------- R Script implementation ---------->


# <- Determine the least square equation that best describes these three variables ->

# Data
piglet <- c(1, 2, 3, 4, 5, 6, 7, 8)
initial_weight <- c(39, 52, 49, 46, 61, 35, 25, 55)
initial_age <- c(8, 6, 7, 12, 9, 6, 7, 4)
weight_gained <- c(7, 6, 8, 10, 9, 5, 3, 4)

# Multiple regression model
model <- lm(weight_gained ~ initial_weight + initial_age)

# Display the coefficients
summary(model)

# Calculate the standard error:
# Standard error of the regression
se <- summary(model)$sigma
cat("Standard Error:", se, "\n")

# How much gain in weight of a pig in a week can we 
# expect with the food supplement 
# if it were 9 weeks old and weighed 48 pounds?
# Predict weight gained for specific values
new_data <- data.frame(initial_weight = 48, initial_age = 9)
predicted_gain <- predict(model, newdata = new_data)
cat("Predicted Weight Gain:", predicted_gain, "\n")

# Test the significance of regression coefficients and overall fit of 
# the regression equation:
# Display regression statistics
summary(model)

# Calculate the residual analysis:
# Residuals
residuals <- resid(model)

# Plot residuals
plot(c(1, 2, 3, 4, 5, 6, 7, 8), residuals, main = "Residual Plot", xlab = "Piglet Number", ylab = "Residuals")

# Determine the partial correlation, multiple correlation and coefficient of 
# multiple determination. Interpret:
# Multiple correlation coefficient (R)
multiple_r <- sqrt(summary(model)$r.squared)
cat("Multiple Correlation Coefficient (R):", multiple_r, "\n")

# Coefficient of multiple determination (R-squared)
multiple_r_squared <- summary(model)$r.squared
cat("Coefficient of Multiple Determination (R-squared):", multiple_r_squared, "\n")
