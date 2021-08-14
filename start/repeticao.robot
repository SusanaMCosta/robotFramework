***Settings***
Documentation       Laços de Repetição

***Variables***
@{AVENGERS}    Iroman    Hulk      Viuva Negra    Cap
@{JUSTICE}     Superman  Wonder Woman   Batman    Arrows

***Test Cases***
Meu primeiro Loop

     FOR  ${item}   IN   @{AVENGERS}
          IF   $item == 'Viuva Negra'
               Log To Console      Obtendo o vingador: ${item}
          END 
     END

Outro Loop
     [tags]    thor

     FOR  ${item}   IN   @{AVENGERS}
          Exit For Loop If    $item == 'Thor'
          Log To Console      Obtendo o vingador: ${item}
     END