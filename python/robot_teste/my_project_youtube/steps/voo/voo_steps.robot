*** Settings ***

Resource                  ../../resource/setting.robot 
Resource                  ../../elements/main_elements.robot


*** Keywords ***


Quando eu realizo uma busca de um vôo ida e volta
    Wait Until Element Is Visible  ${home.a_voos}           10
    Click Element                  ${home.a_voos}
    Wait Until Element Is Visible  ${voo.Input_IdaeVolta}  10
    Click Element                  ${voo.Input_IdaeVolta}


E saindo de ${Texto}
    Wait Until Element Is Visible  ${voo.Input_Ida}  10
    Input Text                     ${voo.Input_Ida}  ${Texto}
    Press Keys                     ${voo.Input_Ida}  ARROW_DOWN
    Press Keys                     ${voo.Input_Ida}  ENTER 
