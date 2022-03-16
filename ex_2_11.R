# Base: Question 2.11 Introductory Econometrics, by Wooldridge
# Base: Exercício 2.11 Introdução a Econometria, do Wooldridge

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases. Download it at Wooldridge's site
# Carregando base de dados. Faça download no site do Wooldridge
BWGHT <- read_excel("bwght.xls", col_names = FALSE)
bwght <- as.data.frame(BWGHT)

# We'll create variables based on the dictionary. Check the textbook for
# what variables we should include at this point.
# Vamos construir variáveis baseadas no dicionário. Confira o livro texto
# sobre quais variáveis vamos incluir nesse momento.
pesonas <- bwght[,4]
cigs <- bwght[,10]

# We'll call the model "reg". It's a linear model (LM), and we can use the
# summary command to check the results. Check textbook and see values match.
# Vamos chamar o modelo de "reg". É um modelo linear, e podemos usar o 
# comando summary para ver os resultados. Verifique o livro texto e veja
# que os valores batem.
reg <- lm(pesonas ~ cigs)
summary(reg)

# Let's plot observations and regression line.
# Vamos plotar observações e a reta de regressão.
plot(cigs,pesonas)
abline(reg)


# Let's plot residuals.
# Vamos plotar os resíduos
plot(reg[["residuals"]])


