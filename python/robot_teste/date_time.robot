*** Settings ***
Documentation   http://robotframework.org/robotframework/latest/libraries/DateTime.html
Library         DateTime
# ja vem instalado no robot essa biblioteca library DateTime

*** Keywords ***
Teste pegando data atual
    ${AGORA}    Get Current Date     result_format=%d-%m-%y
    Log         ${AGORA}

Teste pegando data e hora atuais
    ${AGORA}    Get Current Date     result_format=%Y-%m-%dT%H:%M:%S
    Log         ${AGORA}

Teste pegando ano - mês - dia separadamente
    ${HOJE}     Get Current Date
    ${HOJE}     Convert Date   ${HOJE}   datetime
    Log         ${HOJE.day}-${HOJE.month}-${HOJE.year}

Trabalhando com tempo
    ${HORA}     Convert Time	1 minute 30 seconds
    Log         São ${HORA} segundos em 1 minuto e 30 segundos!
    ${HORA}     Convert Time	5400   verbose
    Log         5400 segundos é ${HORA}!
    ${HORA}     Convert Time	5500   timer   exclude_millis=yes
    Log         5500 segundos é ${HORA}!

Adicionando tempo de data
    ${ANTES}    Get Current Date
    ${DEPOIS}   Add Time To Date    ${ANTES}   4 hours   result_format=%d-%m-%Y %H:%M:%S
    Log         Antes: ${ANTES} - Depois: ${DEPOIS}
    ${ANTES}    Get Current Date
    ${DEPOIS}   Add Time To Date    ${ANTES}   7 days    result_format=%d-%m-%Y %H:%M:%S
    Log         Antes: ${ANTES} - Depois: ${DEPOIS}

Subtraindo tempo de data
    ${ANTES}    Get Current Date
    ${DEPOIS}   Subtract Time From Date    ${ANTES}   25 minutes    result_format=%d-%m-%Y %H:%M:%S
    Log         Antes: ${ANTES} - Depois: ${DEPOIS}
    ${ANTES}    Get Current Date
    ${DEPOIS}   Subtract Time From Date    ${ANTES}   2 days        result_format=%d-%m-%Y %H:%M:%S
    Log         Antes: ${ANTES} - Depois: ${DEPOIS}

Subtraindo tempo de uma data
    ${data}=    Set Variable    2023-06-29 23:59:59
    ${data_anterior}=    Subtract Time From Date    ${data}    2 days    result_format=%d/%m/%Y %H:%M:%S
    Log    A data anterior é: ${data_anterior}


Convertendo data e hora para outro formato
    ${data}=    Set Variable    2023-06-15 00:30:32.966
    ${data_formatada}=    Convert Date    ${data}    result_format=%d/%m/%Y %H:%M:%S
    Log    A data é: ${data_formatada}

Subtraindo dias de uma data
    ${data}=    Set Variable    2023-06-15 00:30:32.966
    ${data_anterior}=    Subtract Time From Date    ${data}    2 days    result_format=%Y-%m-%d %H:%M:%S
    Log    A data anterior é: ${data_anterior}

Adicionando horas a uma data
    ${data}=    Set Variable    2023-06-15 00:30:32.966
    ${data_posterior}=    Add Time To Date    ${data}    3 hours    result_format=%d/%m/%Y %H:%M:%S
    Log    A data posterior é: ${data_posterior}

Manipulando data e hora juntas
    ${data_hora}=    Set Variable    2023-06-15 00:30:32.966
    ${data_hora_formatada}=    Convert Date    ${data_hora}    result_format=%d/%m/%Y %H:%M:%S
    Log    A data e hora são: ${data_hora_formatada}
    ${data_hora_anterior}=    Subtract Time From Date    ${data_hora}    1 hour    result_format=%Y-%m-%d %H:%M:%S
    Log    A data e hora anterior são: ${data_hora_anterior}
    ${data_hora_posterior}=    Add Time To Date    ${data_hora}    2 days 3 hours 30 minutes    result_format=%d/%m/%Y %H:%M:%S
    Log    A data e hora posterior são: ${data_hora_posterior}

*** Test Cases ***
Cenario 01: Pegando data e hora atuais
    Teste pegando data atual
    Teste pegando data e hora atuais
    Teste pegando ano - mês - dia separadamente

Cenario 02: Manipulando o tempo
    Trabalhando com tempo

Cenario 03: Cálculos com data
    Adicionando tempo de data
    Subtraindo tempo de data

Cenario 04: Subtraindo tempo de uma data
    Subtraindo tempo de uma data


Cenario 05: Convertendo data e hora para outro formato
    Convertendo data e hora para outro formato


Cenario 06: Subtraindo dias de uma data
    Subtraindo dias de uma data


Cenario 07: Adicionando horas a uma data
    Adicionando horas a uma data


Cenario 08: Manipulando data e hora juntas
    Manipulando data e hora juntas

    



