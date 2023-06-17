*** Settings ***
# Settings***`: Esta seção é usada para definir as configurações do projeto, como bibliotecas, 
# variáveis globais e configurações de execução. Por exemplo, você pode definir a biblioteca Selenium 
# para automatizar testes em um navegador da web.

# Documentation***`: Esta configuração é usada para definir a documentação do projeto.
Documentation    Teste de pesquisa de produtos de games na Amazon


# Library sao as bibliotecas que serão utilizadas no projeto
Library          SeleniumLibrary
# Library          Selenium2Library | Automatizar Web
# library          requests         | Automatizar API
# Library          AutoItLibrary    | Automatizar Desktop
# Library          DatabaseLibrary  | Automatizar Banco de Dados
# Library          OperatingSystem  | Automatizar Sistema Operacional
# Library          Collections      | Automatizar Listas
# Library          String           | Automatizar Strings
# Library          DateTime         | Automatizar Datas
# Library          Screenshot       | Automatizar Print
# Library          AppiumLibrary    | Automatizar Mobile


# Resource         ../resources/keywords.robot
# Resource e para importar outros arquivos .robot que podemos criar uma pasta resources 
# e colocar os arquivos .robot


*** Variables ***
# ***Variables***`: Esta seção é usada para definir variáveis que podem ser usadas em todo o projeto. 
# Por exemplo, você pode definir uma variável para armazenar o URL do site que está sendo testado.

${BROWSER}        chrome
${DELAY}          0.5s
${TIMEOUT}        10s
${AMAZON_URL}     https://www.amazon.com.br/
${PRODUCT_1}      Xbox Series X
${PRODUCT_2}      PlayStation 5

# ${PRODUCT_1} e ${PRODUCT_2} são variáveis que armazenam o nome dos produtos a serem pesquisados.
# ${AMAZON_URL} é uma variável que armazena a URL da Amazon.
# ${BROWSER} é uma variável que armazena o nome do navegador a ser usado.
# ${TIMEOUT} é uma variável que armazena o tempo limite de espera para ações.
# ${DELAY} é uma variável que armazena o tempo de espera entre as ações.


*** Keywords ***
# ***Keywords***`: Esta seção é usada para definir palavras-chave personalizadas 
# que podem ser usadas em todo o projeto. Por exemplo, você pode definir uma palavra-chave 
# para fazer login em um site.


Abrir o navegador e maximizar a janela
    [Arguments]    ${url}
    # Abre o navegador com a URL especificada e maximiza a janela
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window

Pesquisar produto na Amazon
    [Arguments]    ${product}
    # A palavra-chave "Pesquisar produto na Amazon" recebe um 
    # argumento ${product} que é o nome do produto a ser pesquisado. 
    # Inspecionar elemento na página da Amazon.                                        Outros↓
    # 📌 Atencao: O indetificador unico do elemento que pode ser "id", "name",    "class", "xpath" 
    Wait Until Element Is Visible           id=twotabsearchtextbox
    Input Text                              id=twotabsearchtextbox    ${product}
    # A linha Input Text id=twotabsearchtextbox ${product} insere o texto do produto no campo de busca da Amazon. 
    # O seletor id=twotabsearchtextbox é usado para localizar o campo de busca na página. 
    # Inspecionar elemento na página da Amazon.
    # 📌 Atencao: O indetificador unico do elemento que pode ser "name", "id", "class", "xpath 

    Click Button                            xpath=//input[@value='Ir']
    # A linha Click Button xpath=//input[@value='Ir'] clica no botão "Ir" para iniciar a pesquisa. 
    # O seletor xpath=//input[@value='Ir'] é usado para localizar o botão na página.
    # Inspecionar elemento na página da Amazon.
    # 📌 Atencao: O indetificador unico do elemento que pode ser "name", "id", "class", "xpath 

    Wait Until Page Contains Element        xpath=//span[@class='a-color-state a-text-bold']
    # A linha Wait Until Page Contains Element xpath=//span[@class='a-color-state a-text-bold'] 
    # espera até que a página contenha um elemento com a classe "a-color-state a-text-bold". 
    # Esse elemento é exibido quando a página de resultados de pesquisa é carregada. 
    # O seletor xpath=//span[@class='a-color-state a-text-bold'] é usado para localizar o elemento na página.
    # Inspecionar elemento na página da Amazon.  
    # 📌 Atencao: O indetificador unico do elemento que pode ser "name", "id", "class", "xpath 
Tirar print da página
    [Arguments]                             ${filename}
    # Captura uma captura de tela da página atual e 
    # salva em um arquivo com o nome especificado
    Capture Page Screenshot                 ${filename}

    # 📌 Estrutura XPath
	# Essa estrutura XPath é composta por um caminho de seleção que começa com o caractere
	# `//`, que significa que a seleção pode começar em qualquer lugar do documento. 
	# Em seguida, temos o caractere `*`, que significa que estamos selecionando qualquer elemento. 
	# Depois, temos o atributo `id` com o valor `name`, que é especificado entre colchetes. 
	# Isso significa que estamos selecionando qualquer elemento que tenha um atributo `id` com o valor `name`. 
    # Em resumo, essa estrutura XPath seleciona qualquer elemento que 
	# tenha um atributo `id` com o valor `name` em qualquer lugar do documento. 

*** Test Cases ***
# ***Test Cases***`: Esta seção é usada para definir casos de teste. Cada caso de teste 
# é definido como um conjunto de etapas que o Robot Framework executará. Por exemplo, você pode 
# definir um caso de teste para fazer login em um site e verificar se o usuário é redirecionado para a página correta.

Cenario 1 - Pesquisa do produto Xbox na Amazon
    [Documentation]    Pesquisar o produto Xbox na Amazon e capturar o preço
    [Tags]          amazon, games
    # Abre o navegador com a URL da Amazon e maximiza a janela             amazon, games
    Abrir o navegador e maximizar a janela              ${AMAZON_URL}
    # Pesquisa o produto Xbox na Amazon
    Pesquisar produto na Amazon                         ${PRODUCT_1}
     Espera até que a página contenha um elemento com a classe "a-price-whole"
    # Espera até que a página contenha um elemento com a classe "a-price-whole"
    # Esse elemento é exibido quando o preço do produto é carregado na página
    Wait Until Page Contains Element                    xpath=//span[@class='a-price-whole']
    # Captura uma captura de tela da página atual e salva em um arquivo com o nome "amazon_Xbox Series X.png"
    Tirar print da página                               amazon_${PRODUCT_1}.png

Cenario 2 - Pesquisa do produto PS5 na Amazon
    [Documentation]    Pesquisar o produto PS5 na Amazon e capturar o preço
    [Tags]             amazon, games
    Abrir o navegador e maximizar a janela              ${AMAZON_URL}
    Pesquisar produto na Amazon                         ${PRODUCT_2}
    Wait Until Page Contains Element                    xpath=//span[@class='a-price-whole']
    Tirar print da página                               amazon_${PRODUCT_2}.png