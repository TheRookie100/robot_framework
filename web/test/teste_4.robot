*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${BROWSER}        chrome
${URL}            https://www.google.com
${DELAY}          0.5s
${SEARCH_TERM}    robot framework


*** Keywords ***
Abrir Navegador e acessar site do Google
    Open Browser   ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5s
    Input Text    name=q    robot framework
    Click Button    name=btnK
    Page Should Contain    Robot Framework
    Close Browser

Fechar Navegador
    Close Browser


*** Test Cases ***
Cenario 1 - Pesquisar no Google
    Abrir Navegador e acessar site do Google
    Fechar Navegador



