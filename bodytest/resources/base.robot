***Settings***
Documentation       Tudo começa aqui, meu arquivo base do projeto de automação

Library     Browser
Library     actions/libs/DeloreanLibrary.py

Resource    actions/auth.robot
Resource    actions/students.robot

Resource    actions/nav.robot
Resource    actions/components.robot

***Keywords***
Start Browser Session
    New Browser     chromium    False
    New Page        about:blank

Start Admin Session
    Start Browser Session
    Go to Login Page
    Login With                      admin@bodytest.com                  pwd123
    User Should Be Logged In        Administrador

Clear LS And Take Screenshot 
    Take Screenshot
    LocalStorage Clear

Thinking And Take Screenshot
    [Arguments]     ${timeout}

    Sleep           ${timeout}

    Take Screenshot