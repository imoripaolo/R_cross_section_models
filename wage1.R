# Base: Examples and Exercises by Wooldridge, with base WAGE1.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base WAGE1.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
WAGE1 <- read_excel("wage1.xls", col_names = FALSE)
wage1 <- as.data.frame(WAGE1)

# Creating Variables / Criando Variáveis:
salarioh <- wage1[,1]
educ <- wage1[,2]
exper <- wage1[,3]
perm <- wage1[,4]
log_salario <- wage1[,22]

# Regression for example 2.4 / Regressão para exemplo 2.4
reg2_4 <- lm(salarioh ~ educ)
summary(reg2_4)
plot(educ)
reg2_4[["coefficients"]][["(Intercept)"]] + reg2_4[["coefficients"]][["educ"]]*8


# Regression for example 2.10 / Regressão para exemplo 2.10
reg2_10 <- lm(log_salario ~ educ)
summary(reg2_10)

# Regression for example 3.2 & 4.1 / Regressão para exemplo 3.2 & 4.1
reg3_2 <- lm(log_salario ~ educ + exper + perm)
summary(reg3_2)

