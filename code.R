# Load the dataset
covid_data <- read.csv("covid_supplemental.csv", header = TRUE)

# View first 6 rows
head(covid_data)

# Check structure
str(covid_data)

# Summary statistics
summary(covid_data)
# Check for missing values in all columns
summary(covid_data)  # Shows NAs (e.g., age in covid006)
sapply(covid_data, function(x) sum(is.na(x)))  # Count NAs per column
# calculate median age
median_hayat <- median(covid_data$age, na.rm = TRUE)
# Replace missing age with the median
covid_data$age[is.na(covid_data$age)] <- median_hayat
sum(is.na(covid_data$age))
summary(covid_data$age)  # Check min, median, max
hist(covid_data$age)     # Visualize skewness
# Check age distribution
summary(covid_data$age)
hist(covid_data$age, main = "Age Distribution", col = "pink")
# Load ggplot2
library(ggplot2)

# Boxplot: Mapping rate by hospital room
ggplot(covid_data, aes(x = hospital.room, y = mapping.rate, fill = hospital.room)) +
  geom_boxplot() +
  labs(title = "Mapping Rate by Hospital Room", x = "Room", y = "Mapping Rate")
# T-test (if data is normal)
t.test(mapping.rate ~ hospital.room, data = covid_data)

# Mann-Whitney U test (if non-normal)
wilcox.test(mapping.rate ~ hospital.room, data = covid_data)
lm_model <- lm(mapping.rate ~ hospital.room + age + sex, data = covid_data)  
summary(lm_model)  
# Heatmap of age vs mapping rate (colored by ICU status)
ggplot(covid_data, aes(x = age, y = mapping.rate, color = hospital.room)) +
  geom_point(size = 3, alpha = 0.7) +
  scale_color_manual(values = c("ICU" = "brown", "NonICU" = "blue")) +
  labs(title = "Age vs Mapping Rate by ICU Status") +
  theme_minimal()

# Save the plot
ggsave("advanced_plot.png", width = 8, height = 6)




