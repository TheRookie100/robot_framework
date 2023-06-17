*** Settings ***
Documentation     Este é um exemplo de teste usando as keywords Evaluate e Should Be Equal.
Library           BuiltIn

*** Variables ***
${valor_esperado}    4

*** Keywords ***
Nenhum

*** Test Cases ***
Exemplo de uso das keywords Evaluate e Should Be Equal
    [Documentation]    Este é um exemplo de teste usando as keywords Evaluate e Should Be Equal.
    ${valor_atual}=    Evaluate    2 + 2
    Should Be Equal    ${valor_atual}    ${valor_esperado}