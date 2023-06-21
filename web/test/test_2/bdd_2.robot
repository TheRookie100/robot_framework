***Settings***
Library                                     SeleniumLibrary


***Variables***
# Dados do teste
${NOMEDAMUSICA}                             Alok - Ocean (feat. Zeeba & IRO) | Lyric Video - YouTube

#Variaveis de configuracao
${BROWSER}                                  Chrome
${URL}                                      https://www.youtube.com/

#Elementos

#                                           xpath://*[@id="search"]
# ${INPUT_PESQUISA}                         xpath://input[@id='search']
${INPUT_PESQUISA}                           //input[@id='search']
# Navegador - Copy Xpath
# //*[@id="search"]

# Navegador - Desenvolvido
# //input[@id='search']

#                                           xpath://button[@id='search-icon-legacy']
#                                           xpath://*[@id="search-icon-legacy"]/yt-icon
# ${BUTTON_PESQUISA}                        //*[@id="search-icon-legacy"]  
${BUTTON_PESQUISA}                          //button[@id='search-icon-legacy']


# //*[@id="search-icon-legacy"]/yt-icon ← Esse exemplo foi extraido do navegador usando a ferramenta Copy Xpath, 
# foi usado a ferramenta para auxiliar a encontrar o elemento e foi posicionado no icone. No final do elemento
# foi adicionado /yt-icon para que o elemento fosse encontrado, porem e uma "tag" personalizada do site do youtube 

# Quando foi acessado o site do youtube e inspecionado encontramos essas tags personalizadas, e podemos deparar em varios sites
# <yt-formatted-string/> ← Essa tag e personalizada do site do youtube, ela e usada para formatar o texto
# <yt-icon/> ← Essa tag e personalizada do site do youtube, ela e usada para formatar o icone


# Montar o xpath - pesquisa da musica do costa gold energia no youtube
# // yt-formatted-string[@class="style-scope ytd-video-renderer"]
# ↑   ↑                 ↑
# 1▫  2▫                3▫

#              ↑
#              ↑
# Extair desse elemento as informacoes do xpath que esta acima.
#              ↓
#              ↓
# <yt-formatted-string class="style-scope ytd-video-renderer" aria-label="Costa Gold - Energia 
# (feat. MC Pedrinho e Neguinho do Kaxeta) [prod. Paiva] de TvCostaGold há 5 meses 4 minutos e 56 segundos 1&nbsp;202&nbsp;
# 402 visualizações">Costa Gold - Energia (feat. MC Pedrinho e Neguinho do Kaxeta) [prod. Paiva]</yt-formatted-string>


# Quando montamos o xpath, precisomos usar o pesquisar para pode conferir se o xpath esta correto. Nesse exemplo montamos esse 
# xpath //yt-formatted-string[@class="style-scope ytd-video-renderer"] e o resultao da pesquisa foi de 51 elementos. E precisamos ajustar 
# para que a pesquisa seja correta. Segue o exemplo para especificar o elemento que vai ser o selecionado.

# Exemplo:

# Forma 1:
# (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1] ← Esse elemento e o primeiro elemento da lista de 51 elementos

# Forma 2:
# //yt-formatted-string[@class="style-scope ytd-video-renderer"][1] ← Esse elemento e o primeiro elemento da lista de 51 elementos


${PRIMEIRO}                                 (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${PROVA}                                    //*[@id="movie_player"]

***Keywords***
Dado que eu acesso o site do youtube
    Open Browser                            ${URL}  ${BROWSER} 
    Maximize Browser Window
    Set Selenium Speed                       0.5s

Quando eu digito o nome da musica
    Input Text                              ${INPUT_PESQUISA}    ${NOMEDAMUSICA}

E clico no botao de pesquisa
    Click Element                           ${BUTTON_PESQUISA}

E clico na primeira opcao da lista
    Wait Until Element Is Visible           ${PRIMEIRO}
    Click Element                           ${PRIMEIRO}

Entao o video e executado
    Wait Until Element Is Visible           ${PROVA}
    Sleep                                   30s
    Close Browser


***Test Cases***
Cenario 1: Executar video no site do youtube
    Dado que eu acesso o site do youtube
    Quando eu digito o nome da musica
    E clico no botao de pesquisa
    E clico na primeira opcao da lista
    Entao o video e executado


# (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
#//*[@id="subscribe-button"]/ytd-button-renderer/yt-button-shape/button/yt-touch-feedback-shape/div/div[1]
# //*[@id="video-title"]/yt-formatted-string