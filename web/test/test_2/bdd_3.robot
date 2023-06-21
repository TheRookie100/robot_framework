***Settings***
Library                                     SeleniumLibrary
# Importa a biblioteca SeleniumLibrary para usar no projeto

***Variables***
# Define as variáveis que serão usadas no projeto
${NOMEDAMUSICA}                             Alok - Ocean (feat. Zeeba & IRO) | Lyric Video - YouTube
# Define o nome da música que será pesquisada no YouTube
${BROWSER}                                  Chrome
# Define o navegador que será usado para abrir o YouTube
${URL}                                      https://www.youtube.com/
# Define a URL do YouTube
${INPUT_PESQUISA}                           //input[@id='search']
# Define o XPath do campo de pesquisa do YouTube
${BUTTON_PESQUISA}                          //button[@id='search-icon-legacy']
# Define o XPath do botão de pesquisa do YouTube
${PRIMEIRO}                                 (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
# Define o XPath do primeiro resultado da pesquisa do YouTube
${PROVA}                                    //*[@id="movie_player"]
# Define o XPath do player de vídeo do YouTube

***Keywords***
# Define as palavras-chave que serão usadas no projeto
Dado que eu acesso o site do youtube
# Abre o navegador e acessa o site do YouTube
Open Browser                            ${URL}  ${BROWSER} 
# Abre o navegador com a URL do YouTube e o navegador especificado
Maximize Browser Window
# Maximiza a janela do navegador
Set Selenium Speed                       0.5s
# Define a velocidade do Selenium para 0.5 segundos

Quando eu digito o nome da musica
# Digita o nome da música no campo de pesquisa do YouTube
Input Text                              ${INPUT_PESQUISA}    ${NOMEDAMUSICA}

E clico no botao de pesquisa
# Clica no botão de pesquisa do YouTube
Click Element                           ${BUTTON_PESQUISA}

E clico na primeira opcao da lista
# Clica no primeiro resultado da pesquisa do YouTube
Wait Until Element Is Visible           ${PRIMEIRO}
# Espera até que o primeiro resultado da pesquisa esteja visível
Click Element                           ${PRIMEIRO}

Entao o video e executado
# Espera até que o player de vídeo esteja visível e executa o vídeo
Wait Until Element Is Visible           ${PROVA}
# Espera até que o player de vídeo esteja visível
Sleep                                   300s
# Espera 300 segundos (5 minutos) para o vídeo terminar de tocar
Close Browser
# Fecha o navegador

***Test Cases***
# Define os casos de teste que serão executados
Cenario 1: Executar video no site do youtube
# Define o nome do primeiro caso de teste
Dado que eu acesso o site do youtube 
# Abre o navegador e acessa o site do YouTube
# Given que eu acesso o site do youtube
Quando eu digito o nome da musica
# Digita o nome da música no campo de pesquisa do YouTube
# When eu digito o nome da musica
E clico no botao de pesquisa
# Clica no botão de pesquisa do YouTube
# And clico no botao de pesquisa
E clico na primeira opcao da lista
# Clica no primeiro resultado da pesquisa do YouTube
# And clico na primeira opcao da lista
Entao o video e executado
# Espera até que o player de vídeo esteja visível e executa o vídeo
# Then o video e executado