setwd("D:\SLIIT\lab 7\New folder")

#Question 01

#Random variable x follows a uniform distribution with a=0 and b=40

#Probability that the train arrives between 8:10 a.m. and 8:25 a.m :
punif(25,min = 0, max = 40, lower.tail = TRUE) -punif(10,min = 0, max = 40, lower.tail = TRUE)

#Question 02

#Random variable x has exponential distribution with lambda=0.34

#Probabilty that an update will take at most 2 hours :
pexp(2,rate = 0.334,lower.tail = TRUE)

#Question 03

#Random variable x has normal distribution with mean=100 and standard deviation=15

#i.Probability that a randomly selected person has an IQ above 130 :
1-pnorm(130,mean = 100, sd=15, lower.tail = TRUE)

#ii.IQ Score represents the 95th percentile :
qnorm(0.95,mean = 100, sd=15,lower.tail = TRUE)


