setwd("D:\SLIIT\lab 7\New folder")

#IT Number: IT24104217

#Exercise
#Problem 1: 
cat("i.Binomial Distribution: n=50 and p=0.85")

cat("ii.Probability that at least 47 Students passed: ",
      1- pbinom(46, 50, 0.85,lower.tail = TRUE), "\n")

#Problem 2: 
cat("i.Random variable(X): Number of customer calls recieve in one hour")

cat("ii.Poisson Distribution: lambda=12")

cat("iii.Probability that exactly 15 calls are received in an hour: ",
    dpois(15,12),"\n")