# Base: Examples and Exercises by Wooldridge, with base 401K.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base 401K.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
K_401 <- read_excel("401K.xls", col_names = FALSE)
k_401 <- as.data.frame(K_401)

# Creating Variables / Criando Variáveis:
taxap <- k_401[,1]
taxcont <- k_401[,2]
idade <- k_401[,5]
totemp <- k_401[,6]

# Regression for example 3.3 / Regressão para exemplo 3.3
reg3_3 <- lm(taxap ~ taxcont + idade)
summary(reg3_3)

lm(taxap ~ taxcont)
cor(taxcont,idade) 

# Regression for example 4.6 / Regressão para exemplo 4.6
reg4_6 <- lm(taxap ~ taxcont + idade + totemp)
summary(reg4_6)
reg4_6[["coefficients"]]