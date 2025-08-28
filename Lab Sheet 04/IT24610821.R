setwd("C:\\Users\\it24610821\\Desktop\\IT24610821")

branch_data <- read.csv("Exercise.txt", header = TRUE)
str(branch_data)


head(branch_data)

boxplot(branch_data$Sales_X1, main = "Boxplot of Sales")
summary(branch_data$advertising_X2)
IQR(branch_data$advertising_X2)

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_val
  upper_bound <- Q3 + 1.5 * IQR_val
  return(x[x < lower_bound | x > upper_bound])
}
find_outliers(branch_data$years)