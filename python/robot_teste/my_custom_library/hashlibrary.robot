*** Settings ***
Library         ./libraries/hashLibrary/geradorHash.py

*** Test Cases ***
Teste de conversão de string para HASH sha256
    Converter "Estou ficando ninja em Robot Framework!!" para sha256


*** Keywords ***
Converter "${CONTEUDO}" para ${ALGORITMO}
    ${CONTEUDO_HASH}   Gerar Hash    ${CONTEUDO}    ${ALGORITMO}
    Log   ${CONTEUDO_HASH}

