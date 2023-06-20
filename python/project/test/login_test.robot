*** Settings ***
Resource    ../resources/pages/home_page.robot
Resource    ../resources/pages/login_page.robot

*** Test Cases ***
Login Test
    Open Page
    Click Login Link
    Fill Login Form    test@example.com    password123
    Close Page