# Perfect / Imperfect Colinearity
# Colinearidade Perfeita / Imperfeita

n <- 1000
epsilon <- rnorm(n,0,1)
theta <- rnorm(n,0,1)
x1 <- rnorm(n,30,10)
x2 <- 30 - x1
x3 <- 30 - x1 + theta

# We'll generate two DGPs: 
# Vamos gerar dois PGDs:
beta0 <- 10
beta1 <- 0.7
beta2 <- 0.3
y1 <- beta0 + beta1*x1 + beta2*x2 + epsilon
y2 <- beta0 + beta1*x1 + beta2*x3 + epsilon

# Let's check the regression results:
# Vamos verificar o resultado das regressões:

reg1 <- lm(y1 ~ x1 + x2)
summary(reg1)

reg2 <- lm(y2 ~ x1 + x3)
summary(reg2)

