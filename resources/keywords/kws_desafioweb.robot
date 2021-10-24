*** Settings ***
Documentation   Aqui estarão todas as keywords dos testes Web.
Library         SeleniumLibrary

*** Variables ***
${URL}                  http://automationpractice.com      
${BROWSER}              chrome
&{PRODUTO}              EXISTENTE=blouse   INEXISTENTE=margarina
${ERRO_LOCATOR}         xpath=//p[@class='alert alert-warning']
${ERRO_MENSAGEM}        No results were found for your search "${PRODUTO.INEXISTENTE}"
${MENU_WOMEN}           xpath=//a[@title='Women']
${SDRESSES_SUBMENU}     xpath=//a[@title='Summer Dresses']   
${SDRESSES_PAGETITLE}   Summer Dresses - My Store
${SDRESSES_CATHEADER}   xpath=//span[@class='cat-name'][contains(.,'Summer Dresses')]
${LOGIN_AUTHPAGE}       xpath=//h3[@class='page-subheading'][contains(.,'Create an account')]
${CREATEACC_AUTHPAGE}   xpath=//h3[@class='page-subheading'][contains(.,'Your personal information')]
${CAMPO_EMAIL}          id=email_create
${PRODUCT_CONTAINER}    class=product-container
${EMAIL_VALIDATE}       xpath=//div[@class='form-group form-ok']

*** Keywords ***
Inicia Sessão
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window

Encerra Sessão
    Set Screenshot Directory    ../primeherorep/screenshots/   
    Capture Page Screenshot
    Close Browser

Acessar a página home do site Automation Practice
    Go To                           ${URL}/index.php
    Title Should Be                 My Store
    Wait Until Element is Visible   xpath=//*[@id="block_top_menu"]/ul

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text      id=search_query_top     ${PRODUTO}
Clicar no botão pesquisar
    Click Element       name=submit_search
Conferir mensagem de erro "${ERRO_MENSAGEM}"
    Page Should Contain Element     ${ERRO_LOCATOR}

    ${ERRO_LOCATOR}=        Get WebElement              ${ERRO_LOCATOR}
    Should Be Equal         ${ERRO_LOCATOR.text}        ${ERRO_MENSAGEM}
    Log                     ${ERRO_LOCATOR.text}
 
Passar o mouse por cima da categoria "${MENU_WOMEN}" no menu principal superior da categoria
    Page Should Contain Element     ${MENU_WOMEN}
    Mouse Over                      ${MENU_WOMEN} 

Clicar na sub categoria "${SDRESSES_SUBMENU}"
    Wait Until Element Is Visible   ${SDRESSES_SUBMENU}
    Click Element                   ${SDRESSES_SUBMENU}

Conferir se os produtos da sub-categoria "${SDRESSES_SUBMENU}" foram mostrados na página
    Title Should Be                 ${SDRESSES_PAGETITLE}
    Page Should Contain Element     ${SDRESSES_CATHEADER}  
    Element Should Be Visible       ${PRODUCT_CONTAINER}

Clicar em "Sign in"
    Wait Until Element is Visible   xpath://div[@class='nav']
    Click Element                   xpath://a[@class='login']
Informar um e-mail válido
    Page Should Contain Element     ${LOGIN_AUTHPAGE}
    Input Text                      ${CAMPO_EMAIL}  email4@dominio.com       
    Click Element                   id:create-account_form
    Wait Until Element is Visible   ${EMAIL_VALIDATE}
Clicar em "Create an account"
    Click Element       id=SubmitCreate
Preencher os dados obrigatórios
    Wait Until Element is Visible   ${CREATEACC_AUTHPAGE}
    Select Radio Button             id_gender       id_gender1
    Radio Button Should Be Set To   id_gender       1
    Input Text                      id=customer_firstname   Abcde
    Input Text                      id=customer_lastname    fghiJ
    Input Text                      id=passwd               12345
    Select From List By Value       id=days                 20
    Select From List By Value       id=months               11
    Select From List By Value       id=years                1997
    Select Checkbox                 id=newsletter
    Input Text                      id=firstname            Abcde
    Input Text                      id=lastname             fghiJ
    Input Text                      id=company              Prime Control
    Input Text                      id=address1             Av. Beira Mar
    Input Text                      id=address2             nº 102
    Input Text                      id=city                 Salvador
    Select From List By Value       id=id_state             4
    Input Text                      id=postcode             40000
    Select From List By Value       id=id_country           21
    Input Text                      id=other                outras ideias
    Input Text                      id=phone                1234-56789
    Input Text                      id=phone_mobile         98765-4321
    Input Text                      id=alias                alias

Submeter cadastro    
    Click Element                   id=submitAccount

Conferir se o cadastro foi efetuado com sucesso
    Element Should Not Be Visible   css=alert alert-danger
    Page Should Contain Element     xpath=//p[@class='info-account']
    Page Should Contain Element     xpath=//a[@class='logout']

                                    


