# Base: Examples and Exercises by Wooldridge, with base GPA1.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base GPA1.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
GPA1 <- read_excel("gpa1.xls", col_names = FALSE)
gpa1 <- as.data.frame(GPA1)

# Creating Variables / Criando Variáveis:
supGPA <- gpa1[,10]
emGPA <- gpa1[,11]
ACT <- gpa1[,12]
faltas <- gpa1[,25]

# Regression for example 3.1 / Regressão para exemplo 3.1
reg3_1 <- lm(supGPA ~ emGPA + ACT)
summary(reg3_1)

lm(supGPA ~ ACT)
# Regression for example 4.3 / Regressão para exemplo 4.3
reg4_3 <- lm(supGPA ~ emGPA + ACT + faltas)
summary(reg4_3)
