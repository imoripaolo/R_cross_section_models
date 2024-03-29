# Set a working directory where files will be loaded and stored
# Defina um diret�rio de trabalho em que arquivos ser�o carregados e salvos
setwd("~/R/Woodridge")

# Load packages / Carregue pacotes
library(readxl)

# Load Databases / Carregue base de dados
BWGHT <- read_excel("bwght.xls", col_names = FALSE)

# Make adjustment / Fa�a ajustes
bwght <- as.data.frame(BWGHT)

# Creat variables (if needed) / Crie vari�veis (caso necess�rio)
pesonas <- as.numeric(bwght[,4])
cigs <- as.numeric(bwght[,10])
x <- log(pesonas)


# Define regression model / Defina modelo de regress�o
lm(pesonas ~ cigs + x)

# We can define an object / Podemos definir um objeto
reg <- lm(pesonas ~ cigs)

# Main objects / Objetos principais
summary(reg)

# Regression line / Reta de Regress�o
plot(cigs,pesonas)
abline(reg)

# Fitted Values / Valores Ajustados
fitted <- reg[["fitted.values"]]
plot(fitted)
plot(fitted,pesonas)

# Residuals / Res�duos
residuals <- reg[["residuals"]]
plot(residuals)

# Forecast / Previs�o (1)
beta0 <- reg[["coefficients"]][["(Intercept)"]]
beta1 <- reg[["coefficients"]][["cigs"]]
y <- beta0 + beta1*100
y

# Forecast / Previs�o (2)
dy <- beta1*20
dy


