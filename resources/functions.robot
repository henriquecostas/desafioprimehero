*** Settings ***
Documentation       Funções explícitas do Teste Web  
Resource            package.robot

*** Variables ***


*** Keywords ***
Validar sexo do Usuário
    IF     '${USER.SEXO}'=='Masculino'
        ${SEXO.VALID}=      Set Variable     ${SEXO.M}
    ELSE IF     '${USER.SEXO}'=='Feminino'
        ${SEXO.VALID}=      Set Variable     ${SEXO.F}
    END

# Loop do email para teste não quebrar por conta já existente
#     FOR     ${EMAIL_LOOP_COUNT}     IN RANGE    1   9
#         ${EMAIL_LOOP}=      Catenate    mail${EMAIL_LOOP_COUNT}@dominio.com
#         Input Text                      ${LOGIN.EMAIL_INPUT}     ${EMAIL_LOOP}    
#         Click Element                   ${LOGIN.FORM}
#         Wait Until Element is Visible   ${LOGIN.EMAIL_VALIDATE}
#         Sleep                           3
#         Clicar em "Create an account"
#         Sleep                           3
#         ${PGCADASTRO.ERRO}      Get WebElement     ${PGCADASTRO.ERRO}
#         IF    '${PGCADASTRO.ERRO.text}'=='${PGCADASTRO.ERRO_TEXT}'
#             Continue For Loop
#         ELSE
#             Exit For Loop
#             Wait Until Element is Visible     ${PGCADASTRO.FORM2}
#         END
#     END    


