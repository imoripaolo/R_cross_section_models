# Linear x Non-Linear Models
# Modelos Lineares x Não Lineares
n <- 1000
epsilon <- rnorm(n,0,1)
x <- rnorm(n,15,1)

# We'll generate two DGPs: 
# Vamos gerar dois PGDs:
beta0 <- 10
beta1 <- 0.7
y1 <- beta0 + beta1*x + epsilon
y2 <- exp(beta0 + x^beta1 + epsilon)


# Now, let's check our models:
# Agora, vamos verificar os modelos:
plot(y1, type="l",col = "red")
plot(y2, type="l",col = "red")

# Let's check the regression results:
# Vamos verificar o resultado das regressões:

LM <- lm(y1 ~x)
summary(LM)
plot(LM[["residuals"]])

NLM <- lm(y2 ~x)
summary(NLM)
plot(NLM[["residuals"]])
