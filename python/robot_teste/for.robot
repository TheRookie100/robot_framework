*** Keywords ***
# ## Velho FORMATO
# Velho formato do FOR de listas
#    :FOR    ${animal}    IN    gato    cachorro    cavalo
#    \    Log    O animal desse laço é: ${animal}!
#    \    Log    Vamos para o próximo animal da lista...

# ## NOVO FORMATO
Novo formato do FOR de listas
    FOR    ${animal}    IN    gato    cachorro    cavalo
        Log    O animal desse laço é: ${animal}!
        Log    Vamos para o próximo animal da lista...
    END

### FOR DENTRO DE FOR (Loop aninhado)
### Não é possível fazer aninhamentos diretamente
### O recomendado é criar uma keyword que chama a outra no laço
Cria cadastro de produtos (FOR aninhado)
    FOR    ${produto}    IN    baby look    camiseta    blusa
        Imprime tamanhos para o produto    ${produto}
    END

Imprime tamanhos para o produto
    [Arguments]  ${produto}
    FOR    ${tamanho}    IN    P   M   G
        Log    Produto: ${produto} - Tam: ${tamanho}
    END

### Usando várias variáveis
Cria dicionário de traduções
    FOR    ${index}    ${english}    ${finnish}    ${portugues}   IN
    ...     1           cat           kissa         gato
    ...     2           dog           koira         cachorro
    ...     3           horse         hevonen       cavalo
        Log    Animal ${index}:\nEm inglês: ${english}\nEm finlandês: ${finnish}\nEm português: ${portugues}
    END

### FOR com posicionamento na Lista
# Este loop FOR em Robot Framework usa a função ENUMERATE para iterar sobre uma 
# lista e obter a posição de cada item na lista. Aqui está uma explicação linha por linha do código:
For com numeração
    FOR    ${index}    ${item}    IN ENUMERATE    P   M   G   GG   XG   XXG
    # FOR: inicia o loop FOR.
    #${index}: nome da variável que armazenará a posição do item na lista.
    #${item}: nome da variável que armazenará o valor do item na lista.
    #IN ENUMERATE: indica que o loop FOR usará a função ENUMERATE para iterar sobre a lista.
    #P M G GG XG XXG: lista de itens que serão iterados.
    
        Log    Item da lista: ${item} - Posição do item na lista: ${index}
        # Log: keyword que imprime uma mensagem no console.
        # Item da lista: ${item}: mensagem que imprime o valor do item na lista.
        # Posição do item na lista: ${index}: mensagem que imprime a posição do item na lista.
    END
    # END: finaliza o loop FOR.

### FOR mais opções IN RANGE
Tradicional
    [Documentation]    Percorre de 1 até 10
    FOR    ${index}    IN RANGE    1    11
        Log    ${index}
    END

Apenas quantidade de laços informada (limite superior)
    [Documentation]    Percorre de 0 até 9
    FOR    ${index}    IN RANGE    10
        Log    ${index}
    END

Aritmético
    [Documentation]    Percorre de 0 até 5
    ${var}   Set Variable    ${5}
    FOR    ${index}    IN RANGE    ${var} + 1
        Log    ${index}
    END

Intervalos específicos
    [Documentation]    Percorre de 0 até 30, pulando de 5 em 5
    FOR    ${index}    IN RANGE    0    31    5
        Log    ${index}
    END

*** Test Cases ***
Teste do novo formato do FOR
#    Velho formato do FOR de listas
    Novo formato do FOR de listas

Teste de FOR aninhado
    Cria cadastro de produtos (FOR aninhado)

Teste FOR usando várias váriaveis
    Cria dicionário de traduções

Teste FOR com numeração da lista
    For com numeração

Teste mais opções IN RANGE
    Tradicional
    Apenas quantidade de laços informada (limite superior)
    Aritmético
    Intervalos específicos



# 1. Teste do novo formato do FOR: Este teste demonstra o novo formato do loop 
# FOR em Robot Framework, que é mais legível e fácil de usar. O exemplo prático 
# é um loop FOR que itera sobre uma lista de animais e imprime o nome de cada animal.

# 2. Teste de FOR aninhado: Este teste demonstra como usar um loop FOR aninhado 
# em Robot Framework. O exemplo prático é um loop FOR que itera sobre uma lista 
# de produtos e chama uma keyword que itera sobre uma lista de tamanhos para cada produto.

# 3. Teste FOR usando várias variáveis: Este teste demonstra como usar várias 
# variáveis em um loop FOR em Robot Framework. O exemplo prático é um loop 
# FOR que itera sobre uma lista de traduções e imprime o número de cada animal 
# e suas traduções em inglês, finlandês e português.

# 4. Teste FOR com numeração da lista: Este teste demonstra como usar a numeração 
# da lista em um loop FOR em Robot Framework. O exemplo prático é um loop FOR que 
# itera sobre uma lista de tamanhos de roupas e imprime o tamanho e a posição do 
# item na lista.

# 5. Teste mais opções IN RANGE: Este teste demonstra as diferentes opções disponíveis
#  para o loop FOR IN RANGE em Robot Framework. O exemplo prático inclui quatro 
# loops FOR que percorrem uma lista de números de diferentes 
# maneiras: de 1 a 10, de 0 a 9, de 0 a 5 e de 0 a 30, pulando de 5 em 5.