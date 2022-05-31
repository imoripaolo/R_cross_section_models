# Homoscedasticity
# Homocedasticidade
n <- 1000
epsilon <- rnorm(n,0,1)
x <- rnorm(n,25,2)
u <- epsilon/x
plot(x, epsilon)
plot(x, u)

# Let's simulate two DGPs / Vamos simular dois PGD:
beta0 <- 100
beta1 <- 0.3

y1 <- beta0 + beta1*x + epsilon
y2 <- beta0 + beta1*x + u

# Let's check our regression models:
# Vamos verificar nossos modelos de regressão:

reg1 <- lm(y1 ~ x)
reg2 <- lm(y2 ~ x)
summary(reg1)
summary(reg2)
