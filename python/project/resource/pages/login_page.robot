*** Settings ***
Library    SeleniumLibrary
Resource   ../variables.robot
Resource   ../locators/login_page_locators.robot

*** Variables ***
${PAGE_TITLE}    Login

*** Keywords ***
Fill Login Form
    [Arguments]    ${email}    ${password}
    Input Text    ${EMAIL_FIELD}    ${email}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Element    ${LOGIN_BUTTON}