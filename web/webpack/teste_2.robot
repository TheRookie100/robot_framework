*** Settings ***
# Define as configurações do projeto
Library                         SeleniumLibrary
# Importa a biblioteca SeleniumLibrary para usar no projeto

*** Variables ***
# Define as variáveis que serão usadas no projeto
${NOMEDAMUSICA}                 Alok - Ocean (feat. Zeeba & IRO) | Lyric Video - YouTube
# Define o nome da música que será pesquisada no YouTube
${BROWSER}                      Chrome
# Define o navegador que será usado para abrir o YouTube
${URL}                          https://www.youtube.com/
# Define a URL do YouTube
${INPUT_PESQUISA}               //input[@id="search"]
# Define o XPath do campo de pesquisa do YouTube
${BUTTON_PESQUISA}              //button[@id="search-icon-legacy"]
# Define o XPath do botão de pesquisa do YouTube
${PRIMEIRO}                     (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
# Define o XPath do primeiro resultado da pesquisa do YouTube
${PROVA}                        //*[@id="movie_player"]
# Define o XPath do player de vídeo do YouTube

*** Keywords ***
# Define as palavras-chave que serão usadas no projeto
Abrir navegador (Open browser)
# Abre o navegador e acessa o site do YouTube
    Open Browser                ${URL}    ${BROWSER}
    # Abre o navegador com a URL do YouTube e o navegador especificado
    Maximize Browser Window
    # Maximiza a janela do navegador
    Set Selenium Speed          0.5s
    # Define a velocidade do Selenium para 0.5 segundos

Pesquisar música (Search music)
# Digita o nome da música no campo de pesquisa do YouTube e clica no botão de pesquisa
    Input Text                  ${INPUT_PESQUISA}   ${NOMEDAMUSICA}
    # Digita o nome da música no campo de pesquisa do YouTube
    Click Element               ${BUTTON_PESQUISA}
    # Clica no botão de pesquisa do YouTube

Clicar no primeiro resultado da pesquisa (Click on the first search result)
# Clica no primeiro resultado da pesquisa do YouTube
    Wait Until Element Is Visible                   ${PRIMEIRO}
    # Espera até que o primeiro resultado da pesquisa esteja visível
    Click Element                                   ${PRIMEIRO}
    # Clica no primeiro resultado da pesquisa do YouTube

Reproduzir vídeo (Play video)
# Espera até que o player de vídeo esteja visível e executa o vídeo
    Wait Until Element Is Visible                   ${PROVA}
    # Espera até que o player de vídeo esteja visível
    Sleep                                           8s
    # Espera 8 segundos para o vídeo terminar de tocar
    Close Browser
    # Fecha o navegador

*** Test Cases ***
# Define os casos de teste que serão executados
Executar vídeo no site do YouTube (Play video on YouTube)
# Define o nome do primeiro caso de teste
    Abrir navegador (Open browser)
    # Abre o navegador e acessa o site do YouTube
    Pesquisar música (Search music)
    # Digita o nome da música no campo de pesquisa do YouTube e clica no botão de pesquisa
    Clicar no primeiro resultado da pesquisa (Click on the first search result)
    # Clica no primeiro resultado da pesquisa do YouTube
    Reproduzir vídeo (Play video)
    # Espera até que o player de vídeo esteja visível e executa o vídeo