*** Settings ***

Resource                  ../../resource/setting.robot 
Resource                  ../../elements/main_elements.robot


*** Keywords ***

Dado que eu acesse o php travels
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

E realize o cadastro
    Wait Until Element Is Visible      ${home.A_Signup}            10
    Click Element                      ${home.A_Signup}
    Wait Until Element Is Visible      ${login.Input_PrimeiroNome}  10
    Input Text                         ${login.Input_PrimeiroNome}  ${PrimeiroNome}
    Wait Until Element Is Visible      ${login.Input_UltimoNome}    10
    Input Text                         ${login.Input_UltimoNome}    ${UltimoNome}     
    Wait Until Element Is Visible      ${login.Input_Telefone}      10
    Input Text                         ${login.Input_Telefone}      ${Telefone}  
    Wait Until Element Is Visible      ${login.Input_Email}         10
    Input Text                         ${login.Input_Email}         ${Email}  
    Wait Until Element Is Visible      ${login.Input_Senha}         10 
    Input Text                         ${login.Input_Senha}         ${Senha}
    Wait Until Element Is Visible      ${login.Button_Cookie}       10
    Click Element                      ${login.Button_Cookie}          
    Wait Until Element Is Visible      ${login.Button_Signup}       10 
    Sleep                              2s
    Run Keyword And Ignore Error       Click Element                      ${login.Button_Signup}    
    Click Element                      ${login.Button_Signup}

E faça o Login
    Wait Until Element Is Visible  ${login.A_OpcaoLogin}      10
    Click Element                  ${login.A_OpcaoLogin} 
    Wait Until Element Is Visible  ${login.Input_EmailLogin}  10
    Input Text                     ${login.Input_EmailLogin}  ${Email}
    Wait Until Element Is Visible  ${login.Input_SenhaLogin}  10
    Input Text                     ${login.Input_SenhaLogin}  ${Senha}
    Run Keyword And Ignore Error   Wait Until Element Is Visible  ${login.Button_Cookie}     5
    Run Keyword And Ignore Error   Click Element                  ${login.Button_Cookie}
    Wait Until Element Is Visible  ${login.Button_Logar}      10
    Click Element                  ${login.Button_Logar}

E fecho o navegador
    Close Browser

 