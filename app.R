# Carrega as bibliotecas necessárias
library(shiny)
library(shinydashboard)

# Variáveis
nameApp <- "ORDEP Plus"
# Definir a versão do software (Compatível com a versão do GIT)
versao <- "1.0.0"

# Carrega o arquivo log.r
source("log.r")

# Define a interface do usuário (UI)
ui <- dashboardPage(
  # Cabeçalho do dashboard
  dashboardHeader(title = nameApp,
                  tags$li(
                    class = "dropdown",
                    tags$span("Versão", versao, style = "color: white; margin-right: 10px;")
                  )
  ),
  
  # Barra lateral do dashboard
  dashboardSidebar(
    # Menu com opções
    sidebarMenu(
      menuItem(tabName = "cadastro", text = " Cadastro", icon = icon("lock")),
      menuItem("Exibição", tabName = "exibicao"),
      menuItem("Gráficos", tabName = "graficos"),
      menuItem("Suporte", tabName = "suporte", icon = icon("info"))
    )
  ),
  
  # Corpo do dashboard
  dashboardBody(
    # Abas para diferentes funcionalidades
    tabItems(
      # Aba de cadastro
      tabItem(tabName = "cadastro",
              # Conteúdo da aba de cadastro
              h2("Cadastro"),
              # Aqui você pode adicionar os elementos de entrada para o cadastro
      ),
      
      # Aba de exibição
      tabItem(tabName = "exibicao",
              # Conteúdo da aba de exibição
              h2("Exibição"),
              # Aqui você pode adicionar os elementos para exibir os dados
      ),
      
      # Aba de gráficos
      tabItem(tabName = "graficos",
              # Conteúdo da aba de gráficos
              h2("Gráficos"),
              selectInput("tipo_grafico", "Escolha o tipo de gráfico:",
                          choices = c("Gráfico de Barras" = "bar", "Histograma" = "hist")
              ),
              plotOutput("plot")  # Chama a função para renderizar o gráfico selecionado
      ),
      
      # Aba de suporte
      tabItem(tabName = "suporte",
              h2("Suporte"),
              # Lista de log para exibir informações
              verbatimTextOutput("log")
      )
    ),
    
    # Rodapé centralizado
    tags$footer(
      style = "position: fixed; left: 0; bottom: 0; width: 100%; text-align: center; background-color: #f8f9fa; padding: 10px;",
      tags$span("Versão ", versao, style = "color: black; margin-right: 10px;")
    ) # end tags$footer
  ) # end dashboardBody
) # end dashboardPage

# Define a lógica do servidor
server <- function(input, output, session) {
  # Renderiza a lista de log
  output$log <- renderPrint({
    showSupportInfo()
  })
  
  # Função para gerar gráfico baseado na seleção do usuário
  output$plot <- renderPlot({
    if (input$tipo_grafico == "bar") {
      getBarPlot()  # Chama a função para renderizar o gráfico de barras
    } else if (input$tipo_grafico == "hist") {
      getHistogramPlot()  # Chama a função para renderizar o histograma
    }
  })
}


# Cria a aplicação Shiny
shinyApp(ui, server)



#ORDEP Plus Organização e Análise de Dados de Rede de Pesquisadores

#Compara código fonte

#https://fontawesome.com/search?p=2&o=r&f=brands%2Cclassic