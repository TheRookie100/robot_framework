*** Settings ***
Documentation    Teste de pesquisa de produtos de games na Amazon
Library          SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${DELAY}          0.5s
${TIMEOUT}        10s
${AMAZON_URL}     https://www.amazon.com.br/
${PRODUCT_1}      Xbox Series X
${PRODUCT_2}      PlayStation 5

*** Keywords ***
Abrir o navegador e maximizar a janela
    [Arguments]                 ${url}
    Open Browser                ${url}    ${BROWSER}
    Maximize Browser Window

Pesquisar produto na Amazon
    [Arguments]                             ${product}
    Wait Until Element Is Visible           id=twotabsearchtextbox
    Input Text                              id=twotabsearchtextbox              ${product}
    Click Button                            xpath=//input[@value='Ir']
    Wait Until Page Contains Element        xpath=//span[@class='a-color-state a-text-bold']
    Sleep                                   10s
Tirar print da página
    [Arguments]                             ${filename}
    Capture Page Screenshot                 ${filename}

*** Test Cases ***
Cenario 1 - Pesquisa do produto Xbox na Amazon
    [Documentation]    Pesquisar o produto Xbox na Amazon e capturar o preço
    [Tags]             amazon, games
    Abrir o navegador e maximizar a janela              ${AMAZON_URL}
    Pesquisar produto na Amazon                         ${PRODUCT_1}
    Wait Until Page Contains Element                    xpath=//span[@class='a-price-whole']
    Tirar print da página                               amazon_${PRODUCT_1}.png

Cenario 2 - Pesquisa do produto PS5 na Amazon
    [Documentation]    Pesquisar o produto PS5 na Amazon e capturar o preço
    [Tags]             amazon, games
#    Abrir o navegador e maximizar a janela              ${AMAZON_URL}
    Pesquisar produto na Amazon                         ${PRODUCT_2}
    Wait Until Page Contains Element                    xpath=//span[@class='a-price-whole']
    Tirar print da página                               amazon_${PRODUCT_2}.png