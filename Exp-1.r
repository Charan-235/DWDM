# Intervals and frequencies
intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

# Calculate the cumulative frequencies
cumulative_freq <- cumsum(frequencies)

# Total frequency (N)
total_freq <- sum(frequencies)

# Find the median class (class where cumulative frequency >= N/2)
N_by_2 <- total_freq / 2
median_class_index <- which(cumulative_freq >= N_by_2)[1]

# Get class boundaries for the median class
median_class <- intervals[median_class_index]
lower_boundary <- as.numeric(strsplit(median_class, "-")[[1]][1])
upper_boundary <- as.numeric(strsplit(median_class, "-")[[1]][2])
class_width <- upper_boundary - lower_boundary

# Cumulative frequency before the median class
if (median_class_index == 1) {
  CF <- 0
} else {
  CF <- cumulative_freq[median_class_index - 1]
}

# Frequency of the median class
f <- frequencies[median_class_index]

# Calculate the median
median <- lower_boundary + ((N_by_2 - CF) / f) * class_width

# Output the result
cat("Approximate Median Value:", median, "\n")

#Output
Approximate Median Value: 32.94 
