# Carrega os arquivos .R necessários
loadFiles <- function() {
  files <- c("pacotes.r", "graphics.r", "script.r", "file1.r", "file2.r")  # Adicione todos os arquivos .R aqui
  lapply(files, source)
}

# Carrega as funções do pacotes.r
source("pacotes.r")

# Função para verificar bibliotecas carregadas e arquivos de origem
checkEnvironment <- function() {
  # Verifica se os pacotes estão instalados
  checkPackages(packages)
  
  # Verifica se as bibliotecas foram carregadas
  loaded_libraries <- installed.packages()[, "Package"]
  libraries_loaded <- intersect(packages, loaded_libraries)
  libraries_not_found <- setdiff(packages, loaded_libraries)
  
  # Verifica se os arquivos de origem foram encontrados
  sources <- c("pacotes.r", "graphics.r", "script.r", "file1.r", "file2.r")  # Adicione aqui todos os arquivos de origem que você carrega no seu app
  files_found <- file.exists(sources)
  
  # Cria uma lista com as informações
  info <- list(
    libraries_loaded = paste(libraries_loaded, collapse = ", "),
    libraries_not_found = paste(libraries_not_found, collapse = ", "),
    files_found = paste(sources[files_found], collapse = ", "),
    files_not_found = paste(sources[!files_found], collapse = ", ")
  )
  
  return(info)
}


# Carrega o código do graphics.r
source("graphics.r")

# Função para exibir informações de suporte
showSupportInfo <- function() {
  # Obtém as informações do ambiente
  info <- checkEnvironment()
  
  # Exibe as bibliotecas carregadas
  cat(format(Sys.time(), "%Y-%m-%d %H:%M:%S"), " - Bibliotecas carregadas: ", info$libraries_loaded, "\n")
  
  # Exibe mensagens sobre pacotes não encontrados, se houver
  if (length(info$libraries_not_found) > 0) {
    cat(format(Sys.time(), "%Y-%m-%d %H:%M:%S"), " - Pacotes não encontrados: ")
    cat(paste(info$libraries_not_found, collapse = "\n"), "\n")
  }
  
  # Exibe os arquivos de origem
  cat(format(Sys.time(), "%Y-%m-%d %H:%M:%S"), " - Arquivos de origem encontrados: ", info$files_found, "\n")
  cat(format(Sys.time(), "%Y-%m-%d %H:%M:%S"), " - Arquivos de origem não encontrados: ", info$files_not_found, "\n")
}
