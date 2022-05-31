# Correlation between x and u
# Correlação entre x e u
n <- 1000
epsilon <- rnorm(n,0,1)
x1 <- 15 + 0.5*epsilon
x2 <- rnorm(n,15,1)

plot(epsilon)
plot(x1)
plot(x2)

# We'll generate two DGPs: 
# Vamos gerar dois PGDs:
beta0 <- 10
beta1 <- 0.7
y1 <- beta0 + beta1*x1 + epsilon
y2 <- beta0 + beta1*x2 + epsilon

plot(y1, type="l",col = "red")
plot(y2, type="l",col = "red")

# Let's check the regression results:
# Vamos verificar o resultado das regressões:

reg1 <- lm(y2 ~x2)
summary(reg1)
plot(reg1[["residuals"]])

reg2 <- lm(y1 ~x1)
summary(reg2)
plot(reg2[["residuals"]])

# Look at the results. reg2 has an obvious misfit.
# Olhe os resultados. reg2 tem um mal ajuste óbvio.

# Let's try another thing:
# Vamos tentar outra coisa:
x3 <- 0.5*epsilon + rnorm(n,15,1)
plot(x3)
plot(epsilon)

y3 <- beta0 + beta1*x3 + epsilon
plot(y3)

reg3 <- lm(y3 ~x3)
summary(reg3)
plot(reg3[["residuals"]])
