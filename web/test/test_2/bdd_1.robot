*** Settings ***
Documentation    Teste de pesquisa e reprodução de música eletrônica no YouTube
Library                             SeleniumLibrary

*** Variables ***
${BROWSER}                          chrome
${DELAY}                            0.5s
${TIMEOUT}                          180s
${YOUTUBE_URL}                      https://www.youtube.com/
${MUSIC}                            música eletrônica

*** Keywords ***
Dado que eu estou na página inicial do YouTube (Given I am on the YouTube homepage)
    Open Browser                    ${YOUTUBE_URL}    ${BROWSER}
    Maximize Browser Window

Quando eu pesquiso por uma música (When I search for a music)
    [Arguments]                     ${MUSIC}
    Input Text                      xpath=//input[@id='search']    ${MUSIC}
    Press Keys                      xpath=//input[@id='search']    RETURN

E eu clico no primeiro resultado da pesquisa (And I click on the first search result)
    Wait Until Element Is Visible   xpath=//ytd-video-renderer[1]//a[@id='thumbnail']
    Click Element                   xpath=//ytd-video-renderer[1]//a[@id='thumbnail']

E eu espero o botão de reprodução aparecer (And I wait for the play button to appear)
    Wait Until Element Is Visible   xpath=//*[@id="movie_player"]/div[27]/div[2]/div[1]/button

E eu clico no botão de reprodução (And I click on the play button)
    Click Element                   xpath=//*[@id="movie_player"]/div[27]/div[2]/div[1]/button

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

# O Robot Framework é uma estrutura de automação de código aberto para 
# testes de aceitação e desenvolvimento orientado a testes (TDD).

# BDD - Behavior Driven Development
#    GIVEN | DADO
#    WHEN  | QUANDO
#    THEN  | ENTÃO
#    AND   | E 

# BDD (Behavior-Driven Development) é uma metodologia de desenvolvimento de software que se concentra 
# em descrever o comportamento esperado do software em termos de cenários de negócios. O BDD é baseado 
# em testes automatizados e usa uma linguagem comum entre desenvolvedores, testadores e partes interessadas
# para descrever o comportamento do software em termos de exemplos concretos.

# O BDD é uma evolução do TDD (Test-Driven Development), que se concentra 
# em escrever testes automatizados antes de escrever o código. No BDD, 
# os testes são escritos em uma linguagem natural, como o inglês, 
# e são executados automaticamente pelo software de teste.

# O BDD é uma abordagem colaborativa que envolve desenvolvedores, 
# testadores e partes interessadas no processo de desenvolvimento 
# de software. Ele ajuda a garantir que o software atenda aos requisitos 
# de negócios e que os testes sejam escritos em uma linguagem comum que todos possam entender.


