# Base: Examples and Exercises by Wooldridge, with base HPRICE2.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base HPRICE2.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
HPRICE2 <- read_excel("hprice2.xls", col_names = FALSE)
hprice2 <- as.data.frame(HPRICE2)

# Creating Variables / Criando Variáveis:
comods <- hprice2[,4]
dist <- hprice2[,5]
logdist <- log(dist)
razestud <- hprice2[,8]
logpreço <- hprice2[,10]
logoxn <- hprice2[,11]

# Regression for exercise 3.11a / Regressão para exercício 3.11a
reg3_11a <- lm(logpreço ~ logoxn)
summary(reg3_11a)

# Regression for exercise 3.11b / Regressão para exercício 3.11b
reg3_11b <- lm(logpreço ~ logoxn + comods)
summary(reg3_11b)

# Regression for exercise 4.5 / Regressão para exercício 4.5
reg4_5 <- lm(logpreço ~ logoxn + logdist + comods + razestud)
summary(reg4_5)
