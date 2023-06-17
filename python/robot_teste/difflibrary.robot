*** Settings ***
Library    DiffLibrary

*** Variables ***
${file1_path}    /caminho/para/arquivo1.txt
${file2_path}    /caminho/para/arquivo2.txt

*** Keywords ***
Comparar Arquivos
    [Arguments]    ${file1}    ${file2}
    ${result}=    Compare Files    ${file1}    ${file2}
    Run Keyword If    ${result}    Log    Os arquivos são iguais    ELSE    Log    Os arquivos são diferentes

*** Test Cases ***
Comparar Arquivos Iguais
    [Documentation]    Teste para comparar dois arquivos iguais
    [Tags]    comparar-arquivos
    ${file1}=    Get File    ${file1_path}
    ${file2}=    Get File    ${file1_path}
    Comparar Arquivos    ${file1}    ${file2}

Comparar Arquivos Diferentes
    [Documentation]    Teste para comparar dois arquivos diferentes
    [Tags]    comparar-arquivos
    ${file1}=    Get File    ${file1_path}
    ${file2}=    Get File    ${file2_path}
    Comparar Arquivos    ${file1}    ${file2}


# Neste exemplo, temos a estrutura completa do Robot Framework, incluindo 
# as seções Settings, Variables, Keywords e Test Cases.
# Na seção Settings, importamos a biblioteca DiffLibrary.
# Na seção Variables, definimos as variáveis ${file1_path} e ${file2_path} com 
# os caminhos para os arquivos que queremos comparar.
# Na seção Keywords, definimos o keyword Comparar Arquivos, que recebe dois argumentos: ${file1} e ${file2}. 
# Este keyword usa o comando Compare Files para comparar os dois arquivos e, em seguida, usa o 
# comando Run Keyword If para exibir uma mensagem de log informando se os arquivos são iguais ou diferentes.
# Na seção Test Cases, temos dois testes: Comparar Arquivos Iguais e Comparar Arquivos Diferentes. 
# Cada teste usa o comando Get File para obter o conteúdo dos arquivos que queremos comparar e, em seguida, 
# chama o keyword Comparar Arquivos para comparar os arquivos. O primeiro teste compara dois arquivos iguais
# e o segundo teste compara dois arquivos diferentes.