*** Settings ***
Documentation    Teste de automação para preencher formulário
Library          SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
# ${TIMEOUT}        3s
${URL}            https://itera-qa.azurewebsites.net/home/automation
${NOME}           Arya Stark
${TELEFONE}       555-1234
${EMAIL}          arya.stark@winterfell.com
${SENHA}          123456
${ENDERECO}       Rua Winterfell

*** Keywords ***
Abrir o navegador e maximizar a janela
    [Arguments]                             ${url}
    Open Browser                            ${url}     ${BROWSER}
    Maximize Browser Window

Preencher formulário com dados
    [Arguments]                             ${nome}    ${telefone}    ${email}    ${senha}    ${endereco}
    
    Input Text                              xpath=//*[@id="name"]                             ${nome}
    Input Text                              xpath=//*[@id="phone"]                            ${telefone}
    Input Text                              xpath=//*[@id="email"]                            ${email}
    Input Text                              xpath=//*[@id="password"]                         ${senha}
    Input Text                              xpath=//*[@id="address"]                          ${endereco}
    Click Element                           xpath=//button[@name='submit']
    Capture Page Screenshot

*** Test Cases ***
Cenario 1 - Preencher formulário com dados
    [Documentation]    Preenche o formulário com dados
    [Tags]             formulario, iteratest
    Abrir o navegador e maximizar a janela    ${URL}
    Preencher formulário com dados            ${NOME}    ${TELEFONE}    ${EMAIL}    ${SENHA}    ${ENDERECO}
    Sleep                                     8s
    Close Browser
    # verificar site tempo de carregamento de algum conteudo especifico.
