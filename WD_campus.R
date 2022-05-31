# Base: Examples and Exercises by Wooldridge, with base CAMPUS.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base CAMPUS.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
CAMPUS <- read_excel("campus.xls", col_names = FALSE)
campus <- as.data.frame(CAMPUS)

# Creating Variables / Criando Variáveis:
logcrime <- campus[,5]
logmatricl <- campus[,6]

# Regression for example 4.4 / Regressão para exemplo 4.4
reg4_4 <- lm(logcrime ~ logmatricl)
summary(reg4_4)





