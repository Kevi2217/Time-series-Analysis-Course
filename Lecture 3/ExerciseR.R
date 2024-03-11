
set.seed(seed = 1232020)
e <- rnorm(100, mean = 0, sd = 1)


alpha <- 1
beta <- 0
theta <- 0.8


y_1 <- 0
for(i in 2:length(e)){
  y_1[i] <- alpha+beta*i+theta*y_1[i-1]+e[i]
}

library(forecast)

autoplot(y_1)
