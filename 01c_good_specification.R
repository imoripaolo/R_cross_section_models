# Model Misspecification
# Má Especificação do Modelo
n <- 1000
epsilon <- rnorm(n,0,1)
x1 <- rnorm(n,10,1)
x2 <- rnorm(n,15,3)
x3 <- 1.5*x1 + rnorm(n,0,2)

# We'll generate three DGPs: 
# Vamos gerar três PGDs:
beta0 <- 10
beta1 <- 0.7
beta2 <- 0.3
y1 <- beta0 + beta1*x1 + beta2*x2 + epsilon
y2 <- beta0 + beta1*x1 + epsilon
y3 <- beta0 + beta1*x1 + beta2*x3 + epsilon


# Let's check the regression results:
# Vamos verificar o resultado das regressões:

correct1 <- lm(y1 ~x1 + x2)
summary(correct1)
plot(correct1[["residuals"]])

miss1 <- lm(y1 ~x1)
summary(miss1)
plot(miss1[["residuals"]])

correct2 <- lm(y2 ~x1)
summary(correct2)
plot(correct2[["residuals"]])

miss2 <- lm(y2 ~x1 + x2)
summary(miss2)
plot(miss2[["residuals"]])

correct3 <- lm(y3 ~x1 + x3)
summary(correct3)
plot(correct3[["residuals"]])

miss3 <- lm(y3 ~x1)
summary(miss3)
plot(miss3[["residuals"]])
