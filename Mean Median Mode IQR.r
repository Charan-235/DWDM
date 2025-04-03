# Given dataset
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 
          30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# (a) Compute Mean and Median
mean_value <- mean(ages)
median_value <- median(ages)

# (b) Compute Mode
mode_value <- names(sort(table(ages), decreasing=TRUE))[1]

# (c) Compute Midrange
midrange_value <- (min(ages) + max(ages)) / 2

# (d) Compute Q1 and Q3
Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)

# Print Results
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))
print(paste("Midrange:", midrange_value))
print(paste("Q1 (First Quartile):", Q1))
print(paste("Q3 (Third Quartile):", Q3))
