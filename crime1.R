# Base: Examples and Exercises by Wooldridge, with base CRIME1.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base CRIME1.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
CRIME1 <- read_excel("crime1.xls", col_names = FALSE)
crime1 <- as.data.frame(CRIME1)


# Creating Variables / Criando Variáveis:
npre86 <- crime1[,1]
pcond <- crime1[,4]
sentmed <- crime1[,5]
ptemp86 <- crime1[,7]
empr86 <- crime1[,8]

# Regression for example 3.5.a / Regressão para exemplo 3.5.a
reg3_5a <- lm(npre86 ~ pcond+ptemp86+empr86)
summary(reg3_5a)

# Regression for example 3.5.b / Regressão para exemplo 3.5.b
reg3_5b <- lm(npre86 ~ pcond+sentmed+ptemp86+empr86)
summary(reg3_5b)

