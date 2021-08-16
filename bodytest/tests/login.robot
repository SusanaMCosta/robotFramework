***Settings***
Documentation       Suite de testes de Login do Administrador

*** Settings ***
Library   Browser

***Test Cases***
Login do Administrador
     New Browser    chromium  False
     New Page       https://bodytest-web-susana.herokuapp.com/

     Fill Text      css=input[name=email]        admin@bodytest.com
     Fill Text      css=input[name=password]     pwd123
     Click          text=Entrar
     Get Text       css=aside strong             equal      Administrador

     Take Screenshot

Senha incorreta
     [tags]         temp
     New Browser    chromium  False
     New Page       https://bodytest-web-susana.herokuapp.com/

     Fill Text      css=input[name=email]        admin@bodytest.com
     Fill Text      css=input[name=password]     pwd
     Click          text=Entrar

     #Wait For Elements State       css=.Toastify__toast-body     visible   5
     #Get Text       css=.Toastify__toast-body    equal      Usuário ou senha inválido

     Wait For Elements State       css=.Toastify__toast-body >> text=Usuário ou senha inválido      visible   5