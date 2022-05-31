# Base: Examples and Exercises by Wooldridge, with base BWGHT.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base BWGHT.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados.
BWGHT <- read_excel("bwght.xls", col_names = FALSE)
bwght <- as.data.frame(BWGHT)

# Creating Variables / Criando Variáveis:
rendfam <- as.numeric(bwght[,1])
pesonas <- as.numeric(bwght[,4])
educp <- as.numeric(bwght[,5])
educm <- as.numeric(bwght[,6])
ordnas <- as.numeric(bwght[,7])
cigs <- as.numeric(bwght[,10])

# Regression for exercise 2.11 / Regressão para exercício 2.11
reg2_11 <- lm(pesonas ~ cigs)
summary(reg2_11)
plot(cigs,pesonas)
abline(reg2_11)

beta0 <- reg2_11[["coefficients"]][["(Intercept)"]]
beta1 <- reg2_11[["coefficients"]][["cigs"]]
beta0 + beta1*0 # (i)
beta0 + beta1*20 # (i)
(125 - beta0)/beta1 # (iii)

# Regression for example 4.9 / Regressão para exemplo 4.9
reg4_9 <- lm(pesonas ~ cigs + ordnas + rendfam + educm + educp)
summary(reg4_9)
