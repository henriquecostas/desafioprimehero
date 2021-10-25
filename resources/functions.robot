*** Settings ***
Documentation       Funções explícitas do Teste Web  
Resource            package.robot

*** Keywords ***
Validar sexo do Usuário
    IF     '${USER.SEXO}'=='Masculino'
        ${SEXO.VALID}=      Set Variable     ${SEXO.M}
    ELSE IF     '${USER.SEXO}'=='Feminino'
        ${SEXO.VALID}=      Set Variable     ${SEXO.F}
    END



