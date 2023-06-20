*** Variables ***
# Dicionario de variaveis e elementos da pagina de login e registro do site

${login}
#Elementos da página de registro
...     Input_PrimeiroNome=                  //input[@placeholder="First Name"]
...     Input_UltimoNome=                   //input[@placeholder="Last Name"]
...     Input_Telefone=                    //input[@placeholder="Phone"]
...     Input_Email=                      //input[@type="email"]
...     Input_Senha=                     //input[@placeholder="Password"]
...     Button_Signup=                  //button[@class="btn btn-default btn-lg btn-block effect ladda-button waves-effect"]
...     Button_Cookie=                 //button[@id="cookie_stop"]
#Elementos página de Login
...     Input_EmailLogin=             //input[@placeholder="Email"] 
...     Input_SenhaLogin=            //input[@placeholder="Password"]
...     Button_Logar=               //span[contains(text(),"Login")]
...     A_OpcaoLogin=             (//a[@href="https://www.phptravels.net/login"])[2]


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































