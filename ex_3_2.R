# Base: Question 3.2 Introductory Econometrics, by Wooldridge
# Base: Exercício 3.2 Introdução a Econometria, do Wooldridge

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases. Download it at Wooldridge's site
# Carregando base de dados. Faça download no site do Wooldridge
gpa2 <- read_excel("gpa2.xls", col_names = FALSE)
gpa <- as.data.frame(gpa2)

# We'll create variables based on the dictionary. Check the textbook for
# what variables we should include at this point.
# Vamos construir variáveis baseadas no dicionário. Confira o livro texto
# sobre quais variáveis vamos incluir nesse momento.
colgpa <- gpa[,3]
hsperc <- gpa[,8]
sat <- gpa[,1]

# We'll call the model "reg". It's a linear model (LM), and we can use the
# summary command to check the results. Check textbook and see values match.
# Vamos chamar o modelo de "reg". É um modelo linear, e podemos usar o 
# comando summary para ver os resultados. Verifique o livro texto e veja
# que os valores batem.
reg <- lm(colgpa ~ hsperc + sat)
summary(reg)

# Let's plot residuals graph and residuals histogram
# Vamos plotar o gráfico e histograma dos resíduos
plot(reg[["residuals"]])
hist(reg[["residuals"]])
