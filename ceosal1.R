# Base: Examples and Exercises by Wooldridge, with base CEOSAL1.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base CEOSAL1.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
CEOSAL1 <- read_excel("ceosal1.xls", col_names = FALSE)
ceosal1 <- as.data.frame(CEOSAL1)

# Creating Variables / Criando Variáveis:
salario <- ceosal1[,1]
roe <- ceosal1[,4]
logsalario <- ceosal1[,11]
logvendas <- ceosal1[,12]

# Regression for examples 2.3 & 2.8 / Regressão para exemplos 2.3 & 2.8
reg2_3 <- lm(salario ~ roe)
summary(reg2_3)
plot(roe,salario)
abline(reg2_3)

# Regression for example 2.11 / Regressão para exemplo 2.1
reg2_11 <- lm(logsalario ~ logvendas)
summary(reg2_11)
