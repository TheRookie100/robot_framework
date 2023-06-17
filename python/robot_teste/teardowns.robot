*** Settings ***
Suite Teardown  Controlando o teardown da suite
Test Teardown   Controlando o teardown do teste
# Suite Teardown: define a keyword que será executada após 
# a execução de todos os testes da suite.
# Test Teardown: define a keyword que será executada após a 
# execução de cada teste.
*** Keywords ***
### SUITE TEARDOWNS
Controlando o teardown da suite
    Run Keyword If All Tests Passed     Log  Todos os testes passaram, posso enviar um e-mail, por exemplo!
    Run Keyword If Any Tests Failed     Log  Alguns testes falharam, posso enviar um e-mail, por exemplo!

### TEST TEARDOWNS
Controlando o teardown do teste
    Run Keyword If Test Passed          Log  Meu teste passou, não preciso apagar dados do banco de dados, por exemplo!
    Run Keyword If Test Failed          Log  Meu teste falhou, posso imprimir ou manter uma informação no banco de dados para analisar o erro, por exemplo!

### Controlando o STATUS
Essa keyword fará o teste passar, não executando as keywords abaixo!
    Pass Execution      message=Estou forçando meu teste a passar com sucesso!

Essa keyword fará o teste falhar, não executando as keywords abaixo!
    Fail                msg=Estou forçando meu teste a falhar!

Esse aqui também vai passar com uma condição e vai parar de executar as keywords abaixo!
    ${STATUS}   Run Keyword And Return Status   Should Be True    "May" == "May"
    Log  ${STATUS}
    Pass Execution If    ${STATUS}    message=May é igual a May, então passou!!

Esse keyword vai passar sozinha!
    Should Be True    "May" == "May"
    # Essa codicao deve ser verdadeira para que o teste passe!
Esse keyword vai falhar sozinha!
    Should Be True    "May" == "João"
    # Essa codicao deve ser verdadeira para que o teste passe!


*** Test Cases ***
# *** Test Cases ***: define a seção de testes. 
#### SUCESSO
Exemplo 01: Teste lidando com Suite e Test Teardowns
    Essa keyword fará o teste passar, não executando as keywords abaixo!
    Esse keyword vai passar sozinha!
    Essa keyword fará o teste falhar, não executando as keywords abaixo!

Exemplo 02: Teste lidando com Suite e Test Teardowns
    Esse keyword vai passar sozinha!
    Esse keyword vai passar sozinha!
    Esse aqui também vai passar com uma condição e vai parar de executar as keywords abaixo!
    Esse keyword vai passar sozinha!
    Esse keyword vai passar sozinha!

#### FALHAS
Exemplo 03: Teste lidando com Suite e Test Teardowns
    Esse keyword vai passar sozinha!
    Essa keyword fará o teste falhar, não executando as keywords abaixo!
    Esse keyword vai passar sozinha!
    Esse keyword vai falhar sozinha!

Exemplo 04: Teste lidando com Suite e Test Teardowns
    Esse keyword vai falhar sozinha!


# Keywords importes para controlar fluxos de falhas e sucesso no teste
# Run Keyword If All Tests Passed
# Run Keyword If Any Tests Failed
# Run Keyword If Test Passed
# Run Keyword If Test Failed
# Pass Execution
# Fail
# Run Keyword And Return Status
# Should Be True

# *** Settings ***
# Suite Teardown  Controlando o teardown da suite
# Test Teardown   Controlando o teardown do teste
# Suite Teardown: define a keyword que será executada após 
# a execução de todos os testes da suite.
# Test Teardown: define a keyword que será executada após a 
# execução de cada teste.

# *** Test Cases ***: define a seção de testes.

#### SUCESSO: define um cabeçalho para os testes que passam.
#Exemplo 01: Teste lidando com Suite e Test Teardowns: define o nome do teste.
#Essa keyword fará o teste passar, não executando as keywords abaixo!: descreve o que a keyword faz.
#Esse keyword vai passar sozinha!: descreve o que a keyword faz.
#Essa keyword fará o teste falhar, não executando as keywords abaixo!: descreve o que a keyword faz.

#Exemplo 02: Teste lidando com Suite e Test Teardowns: define o nome do teste.
#Esse keyword vai passar sozinha!: descreve o que a keyword faz.
#Esse keyword vai passar sozinha!: descreve o que a keyword faz.
#Esse aqui também vai passar com uma condição e vai parar de executar as keywords abaixo!: descreve o que a keyword faz.
#Esse keyword vai passar sozinha!: descreve o que a keyword faz.
#Esse keyword vai passar sozinha!: descreve o que a keyword faz.

#### FALHAS: define um cabeçalho para os testes que falham.
#Exemplo 03: Teste lidando com Suite e Test Teardowns: define o nome do teste.
#Esse keyword vai passar sozinha!: descreve o que a keyword faz.
#Essa keyword fará o teste falhar, não executando as keywords abaixo!: descreve o que a keyword faz.
#Esse keyword vai passar sozinha!: descreve o que a keyword faz.
#Esse keyword vai falhar sozinha!: descreve o que a keyword faz.
#Exemplo 04: Teste lidando com Suite e Test Teardowns: define o nome do teste.
#Esse keyword vai falhar sozinha!: descreve o que a keyword faz.

# *** Keywords ***: define a seção de keywords.

### SUITE TEARDOWNS: define um cabeçalho para as keywords de teardown da suite.
# Controlando o teardown da suite: descreve o que a keyword faz.
# Run Keyword If All Tests Passed: executa a keyword somente se todos os testes passaram.
# Log Todos os testes passaram, posso enviar um e-mail, por exemplo!: descreve o que a keyword faz.
# Run Keyword If Any Tests Failed: executa a keyword somente se algum teste falhou.
# Log Alguns testes falharam, posso enviar um e-mail, por exemplo!: descreve o que a keyword faz.

### TEST TEARDOWNS: define um cabeçalho para as keywords de teardown do teste.
# Controlando o teardown do teste: descreve o que a keyword faz.
# Run Keyword If Test Passed: executa a keyword somente se o teste passou.
# Log Meu teste passou, não preciso apagar dados do banco de dados, por exemplo!: descreve o que a keyword faz.
# Run Keyword If Test Failed: executa a keyword somente se o teste falhou.
# Log Meu teste falhou, posso imprimir ou manter uma informação no banco de dados para analisar o erro, por exemplo!: descreve o que a keyword faz.

### Controlando o STATUS: define um cabeçalho para as keywords de controle de status.
# Essa keyword fará o teste passar, não executando as keywords abaixo!: descreve o que a keyword faz.
# Pass Execution: força o teste a passar.
# message=Estou forçando meu teste a passar com sucesso!: descreve o que a keyword faz.
# Essa keyword fará o teste falhar, não executando as keywords abaixo!: descreve o que a keyword faz.
# Fail: força o teste a falhar.
# msg=Estou forçando meu teste a falhar!: descreve o que a keyword faz.
# Esse aqui também vai passar com uma condição e vai parar de executar as keywords abaixo!: descreve o que a keyword faz.
# ${STATUS}: define uma variável para armazenar o status da keyword seguinte.
# Run Keyword And Return Status: executa a keyword seguinte e retorna o status.
# Should Be True "May" == "May": verifica se a condição é verdadeira.
# Log ${STATUS}: imprime o status da keyword anterior.
# Pass Execution If: força o teste a passar se a condição for verdadeira.
# message=May é igual a May, então passou!!: descreve o que a keyword faz.
# Should Be True "May" == "May": verifica se a condição é verdadeira.
# Should Be True "May" == "João": verifica se a condição é verdadeira.


#Todas essas keywords são built-in do Robot Framework, ou seja, elas são fornecidas pela própria biblioteca do Robot Framework. Aqui está uma breve descrição de cada uma delas:

#Log: como mencionado anteriormente, a função da keyword Log é imprimir uma mensagem no console de saída do Robot Framework.
#Run Keyword If Test Failed: esta keyword executa uma keyword somente se o teste falhou.
#Run Keyword If Test Passed: esta keyword executa uma keyword somente se o teste passou.
#Pass Execution: esta keyword força o teste a passar.
#Pass Execution If: esta keyword força o teste a passar se uma condição for verdadeira.
#Should Be True: esta keyword verifica se uma condição é verdadeira.
#Essas keywords são muito úteis para controlar o fluxo de execução dos testes e para verificar se as condições esperadas estão sendo atendidas. Por exemplo, a keyword Should Be True pode ser usada para verificar se uma variável tem o valor esperado, enquanto a keyword Run Keyword If Test Failed pode ser usada para executar uma keyword de limpeza somente se o teste falhar.
