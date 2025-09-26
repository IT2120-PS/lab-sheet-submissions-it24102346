setwd("C:\\Users\\sades\\OneDrive\\Desktop\\PS LAB")

#1
data <- read.table("Exercise - LaptopsWeights (1).txt", header=TRUE)

names(data) <- c("Weights")
attach(data)

popmn <- mean(Weights)
popsd <- sd(Weights)

#2

samples <- c()

n <- c()

for (i in 1:25) {
  s <- sample(Weights, 6 , replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.sds <- apply(samples, 2, sd)

#3
samplemean <- mean(s.means)
samplesd <- sd(s.means)

popmn
popsd

samplemean
samplesd

truesd <- popsd / sqrt(6)

truesd
