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