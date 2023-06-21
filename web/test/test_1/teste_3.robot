*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${NOMEDAMUSICA}                 Alok - Ocean (feat. Zeeba & IRO) | Lyric Video - YouTube
${BROWSER}                      Chrome
${URL}                          https://www.youtube.com/
${INPUT_PESQUISA}               //input[@id="search"]
${BUTTON_PESQUISA}              //button[@id="search-icon-legacy"]
${PRIMEIRO}                     (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${PROVA}                        //*[@id="movie_player"]

*** Keywords ***
Abrir navegador (Open browser)
    Open Browser                ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed          0.5s

Pesquisar música (Search music)
    Input Text                  ${INPUT_PESQUISA}   ${NOMEDAMUSICA}
    Click Element               ${BUTTON_PESQUISA}

Clicar no primeiro resultado da pesquisa (Click on the first search result)
    Wait Until Element Is Visible                   ${PRIMEIRO}
    Click Element                                   ${PRIMEIRO}

Reproduzir vídeo (Play video)
    Wait Until Element Is Visible                   ${PROVA}
    Sleep                                           2s
    Close Browser

*** Test Cases ***
Executar vídeo no site do YouTube (Play video on YouTube)
    Abrir navegador (Open browser)
    Pesquisar música (Search music)
    Clicar no primeiro resultado da pesquisa (Click on the first search result)
    Reproduzir vídeo (Play video)






















