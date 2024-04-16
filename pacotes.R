# # Verifica se os pacotes estão instalados
# 
# 
# if (!require("shiny")) {
#   # Se não estiver instalado, instala o pacote
#   install.packages("shiny")
# }
# 
# if (!require("shinydashboard")) {
#   # Se não estiver instalado, instala o pacote
#   install.packages("shinydashboard", repos="https://cran.r-project.org")
# }



# Função para verificar e instalar pacotes ausentes
checkPackages <- function(packages) {
  missing_packages <- packages[!sapply(packages, requireNamespace, quietly = TRUE)]
  if (length(missing_packages) > 0) {
    install.packages(missing_packages, dependencies = TRUE)
  }
}

# Lista de pacotes necessários
packages <- c("shiny", "shinydashboard")
checkPackages(packages)
