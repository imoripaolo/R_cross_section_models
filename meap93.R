# Base: Examples and Exercises by Wooldridge, with base MEAP93.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base MEAP93.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
MEAP93 <- read_excel("meap93.xls", col_names = FALSE)
meap93 <- as.data.frame(MEAP93)

# Creating Variables / Criando Variáveis:
prgalm <- meap93[,1]
matricl <- meap93[,2]
staff <- meap93[,3]
mate10 <- meap93[,9]
totsal <- meap93[,11]

# Regression for example 2.12 / Regressão para exemplo 2.12
reg2_12 <- lm(mate10 ~ prgalm)
summary(reg2_12)

# Regression for example 4.2 / Regressão para exemplo 4.2
reg2_12 <- lm(mate10 ~ totsal + staff + matricl)
summary(reg2_12)
