***Settings***
Documentation                   Teste de automação de sites
Library                         SeleniumLibrary


***Variables***
${BROWSER}                      Chrome
${URL}                          https://www.amazon.com

${BROWSER2}                     Chrome
${URL2}                         https://www.facebook.com

${BROWSER3}                     Chrome
${URL3}                         https://www.youtube.com

${BROWSER4}                     Chrome
${URL4}                         https://robotframework.org/


***Keywords***

Abrir site no Amazon
    Open Browser    ${URL}     ${BROWSER}
    maximize browser window

Abrir site no Facebook
    Open Browser    ${URL2}    ${BROWSER2}
    maximize browser window

Abrir site no Youtube
    Open Browser    ${URL3}    ${BROWSER3}
    maximize browser window

Abrir site no Robot Framework
    Open Browser    ${URL4}    ${BROWSER4}
    maximize browser window



***Test Cases***

Cenario 1 - Pesquisar site da Amazon
    Abrir site no Amazon    


Cenario 2 - Pesquisar site do Facebook
    Abrir site no Facebook    
    

Cenario 3 - Pesquisar site do Youtube
    Abrir site no Youtube    
    

Cenario 4 - Pesquisar site do Robot Framework
    Abrir site no Robot Framework 





























