***Settings***
Documentation       Suite de testes de Login do Administrador

Resource  ../resources/base.robot

***Test Cases***
Login do Administrador
     Go To Login Page
     Login With     admin@bodytest.com       pwd123

     User Should Be Logged In      Administrador

Senha incorreta
     Go To Login Page
     Login With     admin@bodytest.com       pwd

     Wait For Elements State       css=.Toastify__toast-body >> text=Usuário ou senha inválido      visible   5

Email incorreto
     Go To Login Page
     Login With     admin$bodytest.com       pwd123

     Wait For Elements State       css=form span >> text=Informe um e-mail válido    visible   5

Senha não informada
     Go To Login Page
     Login With     admin@bodytest.com       ${EMPTY}

     Wait For Elements State       css=form span >> text=A senha é obrigatória    visible   5

Email não informado
     Go To Login Page
     Login With     ${EMPTY}       pwd123

     Wait For Elements State       css=form span >> text=O e-mail é obrigatório    visible   5

Email e senha não informados
     Go To Login Page
     Login With     ${EMPTY}       ${EMPTY}

     Wait For Elements State       css=form span >> text=O e-mail é obrigatório    visible   5
     Wait For Elements State       css=form span >> text=A senha é obrigatória    visible   5