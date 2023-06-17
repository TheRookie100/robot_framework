*** Settings ***
Documentation     Teste básico de automação
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.google.com/
${SEARCH_BOX}     name=q
${SEARCH_TERM}    robot framework

*** Keywords ***
Pesquisar termo
    [Arguments]    ${term}
    Input Text     ${SEARCH_BOX}    ${term}
    Press Keys     ${SEARCH_BOX}    \ue007

Executar código Python
    [Arguments]    ${arg1}    ${arg2}
    ${result}    Evaluate    ${arg1} + ${arg2}
    Log    Resultado: ${result}

*** Test Cases ***
Pesquisar no Google
    [Documentation]    Pesquisar um termo no Google
    Open Browser    ${URL}    ${BROWSER}
    Pesquisar termo    ${SEARCH_TERM}
    Executar código Python    2    3
    Close Browser