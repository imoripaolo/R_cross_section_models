# Base: Question 7.3 Introductory Econometrics, by Wooldridge
# Base: Exercício 7.3 Introdução a Econometria, do Wooldridge

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
sat <- gpa[,1]
hsize <- gpa[,6]
hsize_sq <- gpa[,6]^2
female <- gpa[,9]
black <- gpa[,11]
fem_black <- female*black
# Question: what are the dummy variables? (hint: check dataframe!)
# Pergunta: quais são as variáveis dummy? (dica: verifique dataframe!)


# We'll call the model "reg1". It's a linear model (LM), and we can use the
# summary command to check the results. Check textbook and see values match.
# Vamos chamar o modelo de "reg1". É um modelo linear, e podemos usar o 
# comando summary para ver os resultados. Verifique o livro texto e veja
# que os valores batem.
reg1 <- lm(sat ~ hsize+hsize_sq+female+black+fem_black)
summary(reg1)

# We can also create an interaction dummy hsize_black. This is not on the
# textbook, so we can't compare to that result.
# Também podemos criar uma dummy de interação hsize_black. Isso não é feito
# no livro base, então não podemos comparar o resultado.
hsize_black <- hsize*black
reg2 <- lm(sat ~ hsize+hsize_sq+female+black+fem_black+hsize_black)
summary(reg2)
