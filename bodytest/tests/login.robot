***Settings***
Documentation       Suite para testes de Login do Administrador

Resource            ../resources/base.robot

Suite Setup         Start Browser Session
Test Teardown       LocalStorage Clear

***Test Cases***
Login do Administrador
    Go to Login Page
    Login With                      admin@bodytest.com   pwd123
    User Should Be Logged In        Administrador

    [Teardown]      Clear LS And Take Screenshot 

Senha incorreta
    Go to Login Page
    Login With                  admin@bodytest.com   abc123
    Toaster Text Should Be      Usuário e/ou senha inválidos.

    [Teardown]      Thinking And Take Screenshot    2

Email não cadastrado
    Go to Login Page
    Login With                  carlos@teste.com   abc123
    Toaster Text Should Be      Usuário e/ou senha inválidos.

    [Teardown]      Thinking And Take Screenshot    2

Email Incorreto
    Go to Login Page
    Login With                  admin*bodytest.com   pwd123
    Alert Text Should Be        Informe um e-mail válido

Senha não informada
    Go to Login Page
    Login With                  admin@bodytest.com   ${EMPTY}
    Alert Text Should Be        A senha é obrigatória

Email não informado
    Go to Login Page
    Login With                  ${EMPTY}  pwd123
    Alert Text Should Be        O e-mail é obrigatório

Email e senha não informados
    Go to Login Page
    Login With                  ${EMPTY}    ${EMPTY}
    Alert Text Should Be        A senha é obrigatória
    Alert Text Should Be        O e-mail é obrigatório
