# data.r

# Definir o caminho e nome do arquivo
caminho <- "database/"
arquivo <- "dataClassificacao.csv"
caminho_completo <- paste0(caminho, arquivo)

# Carregar o arquivo CSV
dados <- read.csv(caminho_completo, sep = ";")

# Substituir NA por 0 em todas as colunas
dados <- data.frame(
  lapply(dados, function(x) replace(x, is.na(x), 0))
)
