# Função para gerar o gráfico de barras
getBarPlot <- function() {
  barplot(runif(10), main = "Gráfico de Barras Aleatório23", xlab = "X", ylab = "Y")
}

############################################################################################################

# Função para gerar um histograma simples
getHistogramPlot <- function() {
  x <- rnorm(100)  # Dados de exemplo (distribuição normal)
  hist(x, main = "Histograma Simples", xlab = "Valores", ylab = "Frequência")
}

