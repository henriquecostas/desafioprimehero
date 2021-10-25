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

# Loop do email para teste não quebrar por conta já existente
#     FOR     ${EMAIL_LOOP_COUNT}     IN RANGE    0   20
#         ${EMAIL_LOOP}=      Catenate    email${EMAIL_LOOP_COUNT}@dominio.com
#         # Log                             ${EMAIL_LOOP}
#         Input Text                      id:${LOGIN.EMAIL_INPUT}     ${EMAIL_LOOP}    
#         Click Element                   id:${LOGIN.FORM}
#         Wait Until Element is Visible   xpath:${LOGIN.EMAIL_VALIDATE}
#         Sleep                           3
#         Clicar em "Create an account"
#         Sleep                           3
#         ${validate_temp}=       Page Should Not Contain Element      ${PGCADASTRO.ERRO}
#         Wait Until Element is Visible        ${PGCADASTRO.FORM}
#             Exit For Loop If    ${validate_temp}
#         # IF     ${validate_temp}=true
#         #     Exit For Loop
#         # ELSE
#         #     Wait Until Element is Visible     ${PGCADASTRO.FORM}
#         #     Continue For Loop
#         # END
#     END    


