***Settings***
Documentation       Cadastro de Alunos

Resource            ../resources/base.robot

Suite Setup         Start Admin Session

***Test Cases***
Novo aluno
    Go To Students
    Go To Form Student
    New Student                     Carlo  carlos@teste.com.br  19  85  1.85
    Toaster Text Should Be          Aluno cadastrado com sucesso.

    [Teardown]                      Thinking And Take Screenshot    2