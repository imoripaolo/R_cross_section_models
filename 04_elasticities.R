# Elasticities  / Elasticidades

n <- 100
epsilon <- rnorm(n,0,1)
x <- runif(n,10,30)
lnx <- log(x)
beta0 <- 100
beta1 <- 0.3

# Linear Model / Modelo Linear:
y <- beta0 + beta1*x + epsilon
elasticity <- beta1*x/y
plot(elasticity, type="l")

# Log-Linear Model / Modelo Log-Linear:
lny <- beta0 + beta1*lnx + epsilon
y = exp(lny)
marginal_effect <- beta1*y/x
plot(marginal_effect, type="l")

# Log-Lin Model / Modelo Log-Lin:
y <- beta0 + beta1*lnx + epsilon
marginal_effect <- beta1/x
elasticity <- beta1/y
plot(marginal_effect, type="l")
plot(elasticity, type="l")

# Lin-Log Model / Modelo Lin-Log:
lny <- beta0 + beta1*x + epsilon
y <- exp(lny)
marginal_effect <- beta1*y
elasticity <- beta1*x
plot(marginal_effect, type="l")
plot(elasticity, type="l")

# Reciprocal Model / Modelo Recíproco:
y <- beta0 + beta1*(1/x) + epsilon
marginal_effect <- -beta1*(1/x^2)
elasticity <- -beta1*(1/x*y)
plot(marginal_effect, type="l")
plot(elasticity, type="l")
