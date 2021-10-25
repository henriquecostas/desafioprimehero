*** Settings ***
Documentation   Todas as keywords dos Testes Web.
Resource        ../package.robot

*** Keywords ***
Acessar a página home do site Automation Practice
    Title Should Be                 ${HOME.TITLE}
    Wait Until Element is Visible   xpath=${HOME.MENU_CATEGORIAS}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text      id=${HOME.PESQUISA_INPUT}     ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name=${HOME.PESQUISA_BTN}

Conferir mensagem de erro "${SEARCHRESULT.ERRO_MENSAGEM}"
    Page Should Contain Element     xpath=${SEARCHRESULT.ERRO_LOCATOR}
    ${SEARCHRESULT.ERRO_LOCATOR}=   Get WebElement      ${SEARCHRESULT.ERRO_LOCATOR}

    Should Be Equal                 ${SEARCHRESULT.ERRO_LOCATOR.text}       ${SEARCHRESULT.ERRO_MENSAGEM}
    Log                             ${SEARCHRESULT.ERRO_LOCATOR.text}

Passar o mouse por cima da categoria "${HOME.MENU_WOMEN}" no menu principal superior da categoria
    Page Should Contain Element     ${HOME.MENU_WOMEN}
    Mouse Over                      ${HOME.MENU_WOMEN} 

Clicar na sub categoria "${SDRESSES.SUBMENU}"
    Wait Until Element Is Visible   xpath=${SDRESSES.SUBMENU}
    Click Element                   xpath=${SDRESSES.SUBMENU}

Conferir se os produtos da sub-categoria "${SDRESSES_SUBMENU}" foram mostrados na página
    Title Should Be                 ${SDRESSES.TITLE}
    Page Should Contain Element     xpath=${SDRESSES.CTGHEADER}  
    Element Should Be Visible       xpath=${SDRESSES.CONTAINER_PRODUTOS}

Clicar em "Sign in"
    Wait Until Element is Visible   xpath=${HOME.NAV}
    Click Element                   xpath=${HOME.SIGNIN_BTN}

Informar um e-mail válido
    Title Should Be                 ${LOGIN.TITLE}
    Wait Until Element is Visible   ${LOGIN.FORM}
    # Loop do email para teste não quebrar por conta já existente
    Input Text                      ${LOGIN.EMAIL_INPUT}    ${USER.EMAIL}     
    Click Element                   id:${LOGIN.FORM}
    Wait Until Element is Visible   xpath=${LOGIN.EMAIL_VALIDATE}

Clicar em "Create an account"
    Click Element       id=${LOGIN.SUBMIT_BTN}

Preencher os dados obrigatórios
    Wait Until Element is Visible   ${PGCADASTRO.FORM}
    Validar sexo do Usuário
    Select Radio Button             ${PGCADASTRO.RADIO_GENDER_FML}       ${SEXO.VALID}
    Radio Button Should Be Set To   ${PGCADASTRO.RADIO_GENDER_FML}       ${SEXO.VALID}
    ############################### NOME, SOBRENOME E SENHA #########################
    Input Text                      id=${PGCADASTRO.INPUT_NOME}          ${USER.NOME}
    Input Text                      id=${PGCADASTRO.INPUT_SOBRENOME}     ${USER.SOBRENOME}
    Input Text                      id=${PGCADASTRO.INPUT_PW}            ${USER.SENHA}
    ############################### DATA DE NASCIMENTO ##############################
    Select From List By Value       id=${PGCADASTRO.LSITEM_DATA}         ${USER.DATA}
    Select From List By Value       id=${PGCADASTRO.LSITEM_MES}          ${USER.MES}
    Select From List By Value       id=${PGCADASTRO.LSITEM_ANO}          ${USER.ANO}
    Select Checkbox                 id=${PGCADASTRO.CHBOX_NEWSL}
    ############################### ENDEREÇO COMPLETO ##############################
    Input Text                      id=${PGCADASTRO.INPUT_EMPRESA}       ${USER.EMPRESA}
    Input Text                      id=${PGCADASTRO.INPUT_ENDERECO1}     ${USER.ENDERECO}
    Input Text                      id=${PGCADASTRO.INPUT_ENDERECO2}     ${USER.COMPLEMENTO}
    Input Text                      id=${PGCADASTRO.INPUT_CIDADE}        ${USER.CIDADE}
    Select From List By Value       id=${PGCADASTRO.INPUT_ESTADO}        4
    Input Text                      id=${PGCADASTRO.INPUT_CEP}           ${USER.CEP}
    Select From List By Value       id=${PGCADASTRO.INPUT_PAIS}          21
    ############################### tel/feedback e alias ###########################
    Input Text                      id=${PGCADASTRO.INPUT_FEEDBACK}      ${USER.FEEDBACK}
    Input Text                      id=${PGCADASTRO.INPUT_PHONE1}        ${USER.PHONE1}
    Input Text                      id=${PGCADASTRO.INPUT_PHONE2}        ${USER.PHONE2}
    Input Text                      id=${PGCADASTRO.INPUT_REFERENCIA}    ${USER.REFERENCIA}

Submeter cadastro    
    Click Element                   id=${PGCADASTRO.SUBMIT_BTN}

Conferir se o cadastro foi efetuado com sucesso
    Element Should Not Be Visible   css=${PGCADASTRO.ERRO}
    Page Should Contain Element     xpath=${PGCADASTRO.WELCOME}
    Page Should Contain Element     xpath=${PGCADASTRO.LOGOUT_BTN}