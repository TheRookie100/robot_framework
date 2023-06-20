*** Variables ***

# Exemplo 1: Variavel simples

# Elementos da página home
# ${A_Signup}    //a[@href="https://www.phptravels.net/signup"] 
# ${a_voos}     //a[contains(text(),"flights")] 
# ${A_Visto}   //a[@href="https://www.phptravels.net/visa"]  


# Exemplo 2: Dicionario | Variavel composta (lista)

# Elementos da página home
&{home}
...    A_Signup=         //a[contains(text(),"Signup")]
...    a_voos=          //a[contains(text(),"flights")]
...    A_Visto=        //a[contains(text(),"Visa")]


# forma de chama diciionario
# ${home.A_Signup}
# ${home.a_voos}
# ${home.A_Visto}


# O dicionário de dados no Robot Framework é uma estrutura de dados que é usada para armazenar informações 
# que são usadas em vários testes. Ele é definido como uma variável global no arquivo de recursos e pode ser 
# acessado em qualquer lugar do projeto.

# O dicionário de dados é útil para armazenar informações que são usadas em vários testes, como URLs, 
# nomes de usuários, senhas e outras informações de configuração. Ele permite que você defina essas 
# informações em um único lugar e as use em vários testes, em vez de ter que definir as mesmas informações 
# em cada caso de teste individualmente.

# O dicionário de dados é definido usando a sintaxe `*** Variables ***` no arquivo de recursos. 
# Dentro dessa seção, você pode definir várias variáveis e atribuir valores a elas. Essas variáveis 
# podem ser acessadas em qualquer lugar do projeto usando a sintaxe `${nome_da_variável}`.

# Por exemplo, você pode definir um dicionário de dados para armazenar informações de login, 
# como o nome de usuário e a senha. Você pode então acessar essas informações em vários testes 
# usando a sintaxe `${nome_de_usuario}` e `${senha}`.

# O dicionário de dados é uma ferramenta útil para organizar e reutilizar informações em seus testes.
# Ele permite que você defina informações em um único lugar e as use em vários testes, o que pode economizar 
# tempo e reduzir a duplicação de código.























