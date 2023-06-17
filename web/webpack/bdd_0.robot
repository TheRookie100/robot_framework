*** Settings ***
Documentation    Teste de pesquisa e reprodução de música eletrônica no YouTube
Library                                  SeleniumLibrary

*** Variables ***
${BROWSER}                                chrome
${DELAY}                                  0.5s
${TIMEOUT}                                180s
${YOUTUBE_URL}                            https://www.youtube.com/
${MUSIC}                                  música eletrônica

*** Keywords ***
Dado que eu estou na página inicial do YouTube (Given I am on the YouTube homepage)
    Open Browser                            ${YOUTUBE_URL}    ${BROWSER}
    Maximize Browser Window

Quando eu pesquiso por uma música (When I search for a music)
    [Arguments]                             ${MUSIC}
    Input Text                              xpath=//input[@id='search']    ${MUSIC}
    Press Keys                              xpath=//input[@id='search']    RETURN

E eu clico no primeiro resultado da pesquisa (And I click on the first search result)
    Wait Until Element Is Visible           xpath=//ytd-video-renderer[1]//a[@id='thumbnail'] 
    Click Element                           xpath=//ytd-video-renderer[1]//a[@id='thumbnail']

E eu espero o botão de reprodução aparecer (And I wait for the play button to appear)
    Wait Until Element Is Visible           xpath=//*[@id="movie_player"]/div[27]/div[2]/div[1]/button

E eu clico no botão de reprodução (And I click on the play button)
    Click Element                           xpath=//*[@id="movie_player"]/div[27]/div[2]/div[1]/button
    
E eu fecho o navegador (And I close the browser)
    Close Browser

*** Test Cases ***
Pesquisar e reproduzir música eletrônica no YouTube (Search and play electronic music on YouTube)
    [Documentation]    Pesquisar e reproduzir uma música eletrônica no YouTube e fechar o navegador
    [Tags]             youtube, musica eletronica
    Dado que eu estou na página inicial do YouTube (Given I am on the YouTube homepage)
    Quando eu pesquiso por uma música (When I search for a music)    ${MUSIC}
    E eu clico no primeiro resultado da pesquisa (And I click on the first search result)
    E eu espero o botão de reprodução aparecer (And I wait for the play button to appear)
    E eu clico no botão de reprodução (And I click on the play button)
    E eu fecho o navegador (And I close the browser)


# O código que você mostrou é um exemplo de teste automatizado usando a estrutura Given-When-Then.
# Essa estrutura é usada para descrever o comportamento esperado do software em diferentes situações.

# No exemplo, o teste automatizado é para reproduzir uma música no YouTube e imprimir 
# a duração da música. O teste é dividido em etapas, cada uma com uma descrição 
# clara do que deve acontecer. As etapas são:

# Dado que eu estou na página inicial do YouTube (Given I am on the YouTube homepage)
# Quando eu acesso o vídeo "Faded" do Alan Walker (When I access the video "Faded" by Alan Walker)
# E eu clico no botão de reprodução (And I click on the play button)
# Então a música começa a tocar (Then the music starts playing)
# E eu espero a música acabar (And I wait for the music to finish)
# E eu imprimo a duração da música (And I print the music duration)
# E eu fecho o navegador (And I close the browser)
# Cada etapa começa com uma palavra-chave (Given, When, Then ou And) que indica o tipo de etapa. 
# A palavra-chave é seguida por uma descrição do que deve acontecer naquela etapa.

# O código usa a biblioteca SeleniumLibrary para interagir com o navegador e reproduzir 
# a música no YouTube. A função Get Text é usada para obter a duração da música 
# e a função Log é usada para imprimir a duração no console.