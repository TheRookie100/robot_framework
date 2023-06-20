*** Settings ***
Library    SeleniumLibrary
Resource   ../variables.robot

*** Variables ***
${PAGE_TITLE}    PHPTRAVELS | Travel Technology Partner

*** Keywords ***
Open Page
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Set Browser Timeout    30s
    Title Should Be    ${PAGE_TITLE}

Close Page
    Close Browser