***Settings***
Library          SeleniumLibrary


***Variables***
${BROWSER}               chrome
 
${URL}                   https://itera-qa.azurewebsites.net/home/automation
 
${INPUT_NAME}            id:name 
# <input type="text" class="form-control" id="name" aria-describedby="name" placeholder="Enter your name">
${INPUT_EMAIL}           id:email
# <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
${INPUT_PHONE}           id:phone
# <input type="text" class="form-control" id="phone" aria-describedby="phone" placeholder="Enter your mobile phone">
${INPUT_PASSWORD}        id:password
# <input type="password" class="form-control" id="password" placeholder="Password">
${TEXTAREA_ADDRESS}      id:address
# <textarea class="form-control" id="address" rows="3"></textarea>
${BUTTON_SUBMIT}         xpath://button[@name='submit']
# <button type="submit" name="submit" class="btn btn-primary">Submit</button>
# <button type="submit" class="btn btn-primary" name="submit">Submit</button>

                                                                                                         
# 📌 Atencao: O indetificador unico do elemento que pode ser "name", "id", "class", "xpath                 
                                                                                                                                                            

***Keywords***

Abrir navegador
    Open Browser    ${URL}    ${BROWSER}

Preencher formulário
    
    Input Text    ${INPUT_NAME}          Guilherme
    Input Text    ${INPUT_EMAIL}         guilherme@teste.com
    Input Text    ${INPUT_PHONE}         9 97573010
    Input Text    ${INPUT_PASSWORD}      123456
    Input Text    ${TEXTAREA_ADDRESS}    Guilherme Dev Sr

Clicar em submit
    Click Element    ${BUTTON_SUBMIT}
    Maximize Browser Window
    Capture Page Screenshot
    Sleep    5s

Fechar navegador
    Close Browser

****Test Cases****
Cenario 1: Preencher formulário
    Abrir navegador
    Preencher formulário
    Clicar em submit
    Fechar navegador