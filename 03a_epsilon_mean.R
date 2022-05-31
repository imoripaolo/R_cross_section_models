# The mean of the error term
# A média do termo de erro
n <- 1000
epsilon <- rnorm(n,10,1)
x <- rnorm(n,25,2)


# We'll generate the DGP: 
# Vamos gerar o PGD:
beta0 <- 10
beta1 <- 0.7
y <- beta0 + beta1*x + epsilon

# Let's check the regression results:
# Vamos verificar o resultado das regressões:

reg <- lm(y ~x)
summary(reg)
