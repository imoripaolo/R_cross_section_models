# Endogeneity pt II
# Endogeneidade pt II
n <- 1000
epsilon1 <- rnorm(n,0,1)
epsilon2 <- rnorm(n,0,1)
x1 <- rnorm(n,25,2)
x2 <- rnorm(n,40,5)

# Let's talk about the DGP / Vamos falar sobre o PGD:
# x(p) = beta_0 - beta_1*p + beta_2*x1 + epsilon_1
# q(p) = alpha_0 + alpha_1*p + alpha_2*x2 + epsilon_2
# x(p) = q(p)

# We can obtain reduce forms for equilibrium quantity and prices:
# Podemos obter formas reduzidas para preço e quantidade de equilíbrio:
beta0 <- 100
beta1 <- 0.3
beta2 <- 0.2
alpha0 <- 80
alpha1 <- 0.4
alpha2 <- 0.6

# If I didn't screw up, the reduced form is given by:
# Se eu não fiz besteira, a forma reduzida é dada por:
den = -alpha1 - beta1
u1 <- (-alpha1*epsilon1 - beta1*epsilon2)/den
u2 <- (epsilon2 - epsilon1)/den
q <- -(alpha1*(beta0 + beta2*x1) + beta1*(alpha0+ alpha2*x2))/den + u1
p <- (alpha0 + alpha2*x2 - beta0 - beta2*x1)/den + u2

# We don't mind now that prices and quantity can be negative.
# Não vamos nos importar agora que preços e quantidade podem ser negativos.

# What if we regress q ~ p?
# E se regredirmos q ~ p?

reg1 <- lm(q ~ p + x1)
reg2 <- lm(q ~ p + x2)
summary(reg1)
summary(reg2)


