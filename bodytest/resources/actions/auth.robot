***Settings***
Documentation       Ações de autorização

***Keywords***
Go To Login Page
    Go To       https://bodytest-web-carlos.herokuapp.com/

Login With
    [Arguments]     ${email}    ${pass}

    Fill Text       css=input[name=email]       ${email}
    Fill Text       css=input[name=password]    ${pass}
    Click           text=Entrar

Alert Text Should Be
    [Arguments]     ${expect_text}

    Wait For Elements State     css=form span >> text=${expect_text}       visible  5