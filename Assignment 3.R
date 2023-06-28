#Question 1

library(ggplot2)

# Load the iris dataset
data(iris)

# Create the scatterplot with color mapping
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length", color = "Species") +
  theme_minimal()



#Question 2
library(ggplot2)

# Load the txhousing dataset
data(txhousing)

# Check the structure of the dataset
str(txhousing)

# View the first few rows of the dataset
head(txhousing)

# Summary statistics of the dataset
summary(txhousing)

# Check for missing values
missing_values <- sum(!complete.cases(txhousing))
cat("Number of missing values:", missing_values, "\n")

# Scatterplot of median housing price vs. year
ggplot(txhousing, aes(x = year, y = median)) +
  geom_point() +
  labs(x = "Year", y = "Median Housing Price") +
  ggtitle("Median Housing Price by Year") +
  theme_minimal()

# Boxplot of median housing price by month
ggplot(txhousing, aes(x = factor(month), y = median)) +
  geom_boxplot() +
  labs(x = "Month", y = "Median Housing Price") +
  ggtitle("Median Housing Price by Month") +
  theme_minimal()

# Bar plot of number of houses sold by year
ggplot(txhousing, aes(x = factor(year))) +
  geom_bar() +
  labs(x = "Year", y = "Number of Houses Sold") +
  ggtitle("Number of Houses Sold by Year") +
  theme_minimal()



#Question 3
library(ggplot2)


titanic <- read.csv("C:\\Users\\Dell\\Documents\\data science\\titanic.csv")
final_Plot <- ggplot(titanic, aes(x = Fare, fill = factor(Survived))) +
  geom_density(alpha = 0.6) +
  facet_grid(Sex ~ Pclass) +
  labs(title = "Density Plot of Fare by Survived",
       x = "Fare",
       y = "Density",
       fill = "Survived") +
  theme_minimal()
print(final_Plot)
