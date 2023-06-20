*** Settings ***
Library    SeleniumLibrary
Resource   ../variables.robot
Resource   ../locators/home_page_locators.robot

*** Variables ***
${PAGE_TITLE}    PHPTRAVELS | Travel Technology Partner

*** Keywords ***
Click Login Link
    Click Element    ${LOGIN_LINK}