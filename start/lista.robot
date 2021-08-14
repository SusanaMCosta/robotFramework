***Settings***
Documentation  Conhecendo as listas

Library   Collections

***Variables***
#criar listas com @, para declarar uma lista.
@{AVENGERS}    Iroman    Hulk      Viuva Negra    Cap
@{JUSTICE}     Superman  Wonder Woman   Batman    Arrows

***Test Cases***
Minha Lista

     #${index}            Get Index From List      ${AVENGERS}    Iroman
     #Set List Value      ${AVENGERS}    ${index}    Dr Estranho

     #${index_thor}            Get Index From List      ${AVENGERS}    Hulk
     #Remove From List    ${AVENGERS}    ${index_thor}    

     #Log To Console      ${AVENGERS}

     ${crossover}        Combine lists      ${AVENGERS}    ${JUSTICE}

     Log To Console      ${crossover} 