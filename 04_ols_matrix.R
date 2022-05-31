# OLS Model / Modelo MQO

n <- 1000
epsilon <- rnorm(n,0,1)
x1 <- rnorm(n,35,7)
x2 <- rnorm(n,25,2)
beta0 <- 100
beta1 <- 0.3
beta2 <- 0.7
y1 <- beta0 + beta1*x1 + epsilon
y2 <- beta0 + beta1*x1 + beta2*x2 + epsilon

# We can use the lm function / Podemos usar a função lm:
reg1 <- lm(y1 ~ x1)
reg2 <- lm(y2 ~ x1 + x2)
summary(reg1)
reg1[["coefficients"]]
summary(reg2)

# We can also do "manually" / Também podemos fazer "manualmente":
X1 <- cbind(1,x1)
X2 <- cbind(1,x1,x2)
View(X1)
View(X2)
beta_reg_1 <- solve(t(X1)%*%X1)%*%(t(X1)%*%y1)
beta_reg_2 <- solve(t(X2)%*%X2)%*%(t(X2)%*%y2)


