***Settings***
Documentation       Ações da feature de gestão de alunos

***Keywords***
Go To Form Student
    Click                           css=a[href$="alunos/new"]
    Wait For Elements State         css=h1 >> text=Novo aluno           visible     5

New Student
    [Arguments]                     ${student}
    Fill text                       css=input[name=name]                ${student.name} 
    Fill text                       css=input[name=email]               ${student.email}
    Fill text                       css=input[name=age]                 ${student.age}
    Fill text                       css=input[name=weight]              ${student.weight}
    Fill text                       css=input[name=feet_tall]           ${student.feet_tall}

    Click                           xpath=//button[contains(text(), "Salvar")]