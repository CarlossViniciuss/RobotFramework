***Settings***
Documentation       Ações da feature de gestão de alunos

***Keywords***
Go To Form Student
    Click                           css=a[href$="alunos/new"]
    Wait For Elements State         css=h1 >> text=Novo aluno           visible     5

New Student
    [Arguments]                     ${name}     ${email}    ${age}     ${weight}    ${feet_tall}
    Fill text                       css=input[name=name]                ${name} 
    Fill text                       css=input[name=email]               ${email}
    Fill text                       css=input[name=age]                 ${age}
    Fill text                       css=input[name=weight]              ${weight}
    Fill text                       css=input[name=feet_tall]           ${feet_tall}

    Click                           xpath=//button[contains(text(), "Salvar")]