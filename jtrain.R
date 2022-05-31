# Base: Examples and Exercises by Wooldridge, with base JTRAIN.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base JTRAIN.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
JTRAIN <- read_excel("jtrain.xls", col_names = FALSE)
jtrain <- as.data.frame(JTRAIN)

# Creating Variables / Criando Variáveis:
ano <- jtrain[,1]
sindic <- jtrain[,9]
hrsemp <- as.numeric(jtrain[,14])
logrejei <- as.numeric(jtrain[,15])
logempreg <- as.numeric(jtrain[,16])
logvendas <- as.numeric(jtrain[,17])


