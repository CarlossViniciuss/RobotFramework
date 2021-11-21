***Settings***
Documentation       Cadastro de Alunos

Resource            ../resources/base.robot

Suite Setup         Start Admin Session

***Test Cases***
Novo aluno

    &{student}      Create Dictionary       name=Carlos Vinicius    email=carlos@teste.com      age=20      weight=80       feet_tall=1.85

    Remove Student                  ${student.email} 
    Go To Students
    Go To Form Student
    New Student                     ${student}
    Toaster Text Should Be          Aluno cadastrado com sucesso.

    [Teardown]                      Thinking And Take Screenshot    2

Não deve permitir email duplicado
    [tags]          dup

    &{student}      Create Dictionary       name= Vinicius    email=vinicius@teste.com      age=21      weight=85       feet_tall=1.80

    Insert Student                  ${student}

    Go To Students
    Go To Form Student
    New Student                     ${student}
    Toaster Text Should Be          Email já existe no sistema.

    [Teardown]                      Thinking And Take Screenshot    2