*** Settings ***
Library         ./libraries/hashLibrary/geradorHash.py

*** Test Cases ***
Teste de conversão de string para HASH sha256
    Converter "Estou ficando ninja em Robot Framework!!" para sha256

#Teste de conversão de arquivo para HASH sha256
    #Converter o arquivo "arquivo_PDF.pdf" para sha256

*** Keywords ***
Converter "${CONTEUDO}" para ${ALGORITMO}
    ${CONTEUDO_HASH}   Gerar Hash    ${CONTEUDO}    ${ALGORITMO}
    Log   ${CONTEUDO_HASH}

#Converter o arquivo "${CAMINHO_ARQUIVO}" para ${ALGORITMO}
   # ${CONTEUDO_HASH}   Gerar Hash Arquivo   ${CAMINHO_ARQUIVO}    ${ALGORITMO}
   # Log   ${CONTEUDO_HASH}