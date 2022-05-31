# Base: Examples and Exercises by Wooldridge, with base WAGE1.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base WAGE1.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
WAGE2 <- read_excel("wage1.xls", col_names = FALSE)
wage2 <- as.data.frame(WAGE2)

# Creating Variables / Criando Variáveis:
educ <- wage2[,5]
irms <- wage2[,13]
educm <- wage2[,15]
educf <- wage2[,16]

# Regression for exercise 3.1 / Regressão para exercício 3.1
reg3_1 <- lm(educ ~ irms + educm + educf)
summary(reg3_1)
# Values don't match - probably the base changed - n is different.
# Valores não batem - provavelmente a base muda - n está diferente.