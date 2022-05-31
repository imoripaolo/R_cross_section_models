# Base: Examples and Exercises by Wooldridge, with base RDCHEM.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base RDCHEM.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados.
RDCHEM <- read_excel("rdchem.xls", col_names = FALSE)
rdchem <- as.data.frame(RDCHEM)

# Creating Variables / Criando Variáveis:
lucrmarg <- rdchem[,5]
logvendas <- rdchem[,7]
logrd <- rdchem[,8]

# Regression for example 4.8 / Regressão para exemplo 4.8
reg4_8 <- lm(logrd ~ logvendas + lucrmarg)
summary(reg4_8)
