# Base: Examples and Exercises by Wooldridge, with base LAWSCH85.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base LAWSCH85.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
LAWSCH85 <- read_excel("lawsch85.xls", col_names = FALSE)
lawsch85 <- as.data.frame(LAWSCH85)

# Creating Variables / Criando Variáveis:
rank <- as.numeric(lawsch85[,1])
lSAT <- as.numeric(lawsch85[,4])
supGPA <- as.numeric(lawsch85[,5])
logsalario <- as.numeric(lawsch85[,14])
logvolbib <- as.numeric(lawsch85[,20])
logcusto <- as.numeric(lawsch85[,21])

# Regression for exercise 3.3 / Regressão para exercício 3.3
reg3_3 <- lm(logsalario ~ lSAT+supGPA+logvolbib+logcusto+rank)
summary(reg3_3)
