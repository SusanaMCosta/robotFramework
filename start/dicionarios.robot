***Settings***
Documentation  Conhecendo os dicionários do Robot (Nativo do Pyhton)

***Variables***
#${SIMPLES}     Susana
#@{CARROS}      Chevette  Fusca     Camaro    Carro de mão
&{CARRO}       nome=Chevette       hp=1500   portas=2       cor=marrom

**Test Cases***
Obtendo valores de um dicionario
     Log To Console      ${CARRO.nome}