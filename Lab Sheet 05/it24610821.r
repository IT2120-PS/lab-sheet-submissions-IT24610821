setwd ("C:\\Users\\it24610821\\Desktop\\IT24610821")
#1
Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE, sep =",")
names(Delivery_Times) <- c("Deliver_Times")
data


Delivery_Times$Deliver_Times <- as.numeric(Delivery_Times$Deliver_Times)


#2
hist(Delivery_Times$Deliver_Times,
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "lightblue")

#3   
summary(Delivery_Times$Deliver_Times)
##The histogram of delivery times shows a right-skewed distribution, with most delivery times clustered toward the lower end (closer to 20) and fewer data points extending towards the higher end (closer to 70).
##This suggests that the majority of deliveries are completed in a shorter amount of time.



#4
hist_data <- hist(Delivery_Times$Deliver_Times,
                  breaks = seq(20, 70, length.out = 10),
                  right = FALSE,
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)

plot(hist_data$breaks[-1], cum_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "darkgreen")


