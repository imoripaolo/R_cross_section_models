# Dummy Variable / Variável Dummy

n <- 1000
epsilon <- rnorm(n,0,1)
x <- rnorm(n,35,7)
d1 <- rbinom(1000,1,0.5)
d2 <- rbinom(1000,1,0.3)
plot(d1)
beta0 <- 100
beta1 <- 0.3
beta2 <- 0.7
beta3 <- 0.5

# Let's create two DGPs / Vamos criar dois PGD:
y1 <- beta0 + beta1*x + beta2*d1 + beta3*d1*x + epsilon
y2 <- beta0 + beta1*d1 + beta2*d2 + beta3*d1*d2 + epsilon

plot(y1)
plot(y2)
