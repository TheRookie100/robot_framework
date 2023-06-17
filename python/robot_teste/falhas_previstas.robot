*** Keywords ***
Essa keyword vai falhar, mas vou ignorar (a suíte irá passar)!
    Run Keyword And Ignore Error    Should Be True    "May" == "João"
    Log   Continuo a execução!!

Essa keyword vai falhar, mas é uma falha que deve acontecer para meu teste ser considerado OK!
    Run Keyword And Expect Error    '"May" == "João"' should be true.       Should Be True    "May" == "João"

Essa keyword vai falhar, não vou ignorar (a suíte irá falhar), mas vou continuar a execução!
    Run Keyword And Continue On Failure     Should Be True    "May" == "João"
    Log   Continuo a execução 1!!
    Log   Continuo a execução 2!!
    Log   Continuo a execução 3!!

Essa keyword encerra a execução da suíte!
    [Arguments]     ${STOP}
    Run Keyword if  "${STOP}"=="Para tudo!"   Fatal Error   msg=Para tudo, não adianta continuar com essa falha aqui!!!

*** Test Cases ***
#### FALHAS PREVISTAS
Exemplo 01: Teste lidando com falhas previstas
    Essa keyword vai falhar, mas vou ignorar (a suíte irá passar)!
    Essa keyword encerra a execução da suíte!    Não pare, por favor!
    Essa keyword vai falhar, mas é uma falha que deve acontecer para meu teste ser considerado OK!
    Essa keyword vai falhar, não vou ignorar (a suíte irá falhar), mas vou continuar a execução!
    Essa keyword encerra a execução da suíte!    Para tudo!

Exemplo 02: Teste de continuação da suíte
    No Operation

Exemplo 03: Teste de continuação da suíte
    No Operation




# ```robot *** Test Cases ***

# FALHAS PREVISTAS
# Exemplo 01: Teste lidando com falhas previstas Essa keyword vai falhar, 
# mas vou ignorar (a suíte irá passar)! # Executa uma keyword que falha, 
# mas a falha é ignorada. Essa keyword encerra a execução da suíte! Não pare, por favor! # Executa uma keyword que encerra a execução da suíte. Essa keyword vai falhar, mas é uma falha que deve acontecer para meu teste ser considerado OK! # Executa uma keyword que falha, mas a falha é esperada. Essa keyword vai falhar, não vou ignorar (a suíte irá falhar), mas vou continuar a execução! # Executa uma keyword que falha e a falha não é ignorada. Essa keyword encerra a execução da suíte! Para tudo! # Executa uma keyword que encerra a execução da suíte.

# Exemplo 02: Teste de continuação da suíte No Operation # Não faz nada.

# Exemplo 03: Teste de continuação da suíte No Operation # Não faz nada.

# *** Keywords *** Essa keyword vai falhar, mas vou ignorar (a suíte irá passar)! Run Keyword And Ignore Error Should Be True "May" == "João" # Executa uma keyword que verifica se a condição é verdadeira, mas a condição é falsa e a falha é ignorada. Log Continuo a execução!! # Imprime uma mensagem no console de saída.

# Essa keyword vai falhar, mas é uma falha que deve acontecer para meu teste ser considerado OK! Run Keyword And Expect Error '"May" == "João"' should be true. Should Be True "May" == "João" # Executa uma keyword que verifica se a condição é verdadeira, mas a condição é falsa e a falha é esperada.

# Essa keyword vai falhar, não vou ignorar (a suíte irá falhar), mas vou continuar a execução! Run Keyword And Continue On Failure Should Be True "May" == "João" # Executa uma keyword que verifica se a condição é verdadeira, mas a condição é falsa e a falha não é ignorada. Log Continuo a execução 1!! # Imprime uma mensagem no console de saída. Log Continuo a execução 2!! # Imprime uma mensagem no console de saída. Log Continuo a execução 3!! # Imprime uma mensagem no console de saída.

# Essa keyword encerra a execução da suíte! [Arguments] ${STOP} Run Keyword if "${STOP}"=="Para tudo!" Fatal Error msg=Para tudo, não adianta continuar com essa falha aqui!!! # Executa uma keyword que verifica se a condição é verdadeira e encerra a execução da suíte se a condição for verdadeira.