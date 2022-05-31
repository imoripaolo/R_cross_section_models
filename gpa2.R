# Base: Examples and Exercises by Wooldridge, with base GPA2.
# Download it at Wooldridge's site.
# Base: Exemplos e Exercícios de Woolrdrige, com base GPA2.
# Faça download no site do Wooldridge.

# Let's set a working directory and load packages
# Vamos definir uma área de trabalho e carregar pacotes
setwd("~/R/Woodridge")
library(readxl)

# Loading Databases / Carregando base de dados. 
GPA2 <- read_excel("gpa2.xls", col_names = FALSE)
gpa2 <- as.data.frame(GPA2)

# Creating Variables / Criando Variáveis:
sat <- gpa2[,1]
supgpa <- gpa2[,3]
hsize <- gpa2[,6]
hsize_sq <- gpa2[,6]^2
emperc <- gpa2[,8]
female <- gpa2[,9]
black <- gpa2[,11]
fem_black <- female*black

# Regression for exercise 3.2 / Regressão para exercício 3.2
reg7_3 <- lm(supgpa ~ emperc + sat)
summary(reg7_3)
plot(reg7_3[["residuals"]])
hist(reg7_3[["residuals"]])

# Regression for exercise 7.3 / Regressão para exercício 7.3
reg7_3 <- lm(sat ~ hsize+hsize_sq+female+black+fem_black)
summary(reg7_3)