# Fixed x
# x Fixo

n <- 1000
epsilon <- rnorm(n,0,1)
x <- c()
for (i in 1:n) {x[i] <- 10}

# We'll generate the DGP: 
# Vamos gerar o PGD:
beta0 <- 10
beta1 <- 0.7
y <- beta0 + beta1*x + epsilon

# Let's check the regression results:
# Vamos verificar o resultado das regressões:

reg <- lm(y ~x)
summary(reg)

reg <- lm(y ~1)
summary(reg)
