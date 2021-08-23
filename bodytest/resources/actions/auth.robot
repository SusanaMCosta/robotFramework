***Settings***
Documentation  Ações de autorização

***Keywords***

Go To Login Page
     New Browser    chromium  False
     New Page       https://bodytest-web-susana.herokuapp.com/

Login With
     [Arguments]    ${email}  ${pass}

     Fill Text      css=input[name=email]        ${email}
     Fill Text      input[placeholder*=senha]     ${pass}
     Click          text=Entrar