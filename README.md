# ORDEP Plus - Organização e Análise de Dados de Rede de Pesquisadores

## 📚 Descrição do Projeto

O ORDEP Plus é um projeto desenvolvido em R para classificar pesquisadores com base em critérios como o número de patentes, artigos, atividades de orientação, entre outros. A aplicação utiliza a biblioteca Shiny para a interface do usuário e oferece recursos de visualização e análise de dados.

## 📁 Arquivos do Projeto

- **app.r**: Contém o código principal da aplicação Shiny, incluindo a definição da interface do usuário (UI) e a lógica do servidor. A UI apresenta um dashboard com abas para cadastro, exibição, gráficos e suporte, além de um rodapé com a versão da aplicação. A lógica do servidor inclui funcionalidades como a renderização da lista de log e a geração de gráficos.

- **pacotes.r**: Este arquivo contém a função `checkPackages` para verificar e instalar pacotes ausentes necessários para a aplicação.

- **graphics.r**: Contém a função `getBarPlot` para gerar um gráfico de barras aleatório.

- **log.r**: Contém as funções `checkEnvironment` e `showSupportInfo` para verificar bibliotecas carregadas, pacotes não encontrados, arquivos de origem encontrados e não encontrados, e exibir informações de suporte na aplicação.

- **functions.r**: Este arquivo contém a função `classify_researcher` para classificar os pesquisadores com base nos critérios definidos.

## 🚀 Versão Inicial (1.0.0)

### Funcionalidades:

- **Classificação de Pesquisadores:** Analisa o desempenho dos pesquisadores com base em critérios como número de patentes, artigos publicados, orientações, entre outros.

- **Visualização de Dados:** Oferece gráficos interativos para visualizar o desempenho dos pesquisadores de forma mais intuitiva.

- **Suporte Técnico:** Exibe informações sobre as bibliotecas carregadas, pacotes não encontrados e arquivos de origem na aplicação.

- **Download de Gráficos:** Permite ao usuário baixar os gráficos gerados pela aplicação para uso externo.

- **Interface Amigável:** Apresenta um dashboard intuitivo com abas para cada funcionalidade e um rodapé com informações da versão.

## 📊 Fonte de Dados

Os dados utilizados para a classificação dos pesquisadores são provenientes do arquivo dataClassificacao.csv, que contém as seguintes colunas:

- **id:** Identificação única do pesquisador.
- **name:** Nome do pesquisador.
- **article_A1 a article_A4:** Número de artigos publicados em diferentes categorias (A1 a A4).
- **article_B1 a article_B4:** Número de artigos publicados em diferentes categorias (B1 a B4).
- **guidance_d_c:** Número de orientações em nível de doutorado concluídas.
- **guidance_m_c:** Número de orientações em nível de mestrado concluídas.
- **patent:** Número de patentes registradas.
- **software:** Número de softwares desenvolvidos.
- **first_doc:** Ano de obtenção do primeiro doutorado.

