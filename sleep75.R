# Base: Examples and Exercises by Wooldridge, with base SLEEP75.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base SLEEP75.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
SLEEP75 <- read_excel("sleep75.xls", col_names = FALSE)
sleep75 <- as.data.frame(SLEEP75)

# Creating Variables / Criando Variáveis:
idade <- sleep75[,1]
educ <- sleep75[,6]
dormir <- sleep75[,21]
trabtot <- sleep75[,26]

# Regression for exercise 3.4 / Regressão para exercício 3.4
reg3_4 <- lm(dormir ~ trabtot + educ + idade)
summary(reg3_4)