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
${PRODUCT_CONTAINER}    class=product-container

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