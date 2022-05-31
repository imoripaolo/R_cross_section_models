# Base: Examples and Exercises by Wooldridge, with base VOTE1.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base VOTE1.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
VOTE1 <- read_excel("vote1.xls", col_names = FALSE)
vote1 <- as.data.frame(VOTE1)

# Creating Variables / Criando Variáveis:
votoA <- vote1[,4]
partA <- vote1[,10]

# Regression for example 2.5 / Regressão para exemplo 2.5
reg2_5 <- lm(votoA ~ partA)
summary(reg2_5)
y <- 26.81254 + 0.46382*50
y
