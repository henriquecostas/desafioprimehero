*** Settings ***
Documentation   Aqui estarão todas as keywords dos testes Web.
Library         SeleniumLibrary

*** Variables ***
${URL}      http://automationpractice.com      
${BROWSER}  chrome

*** Keywords ***
Inicia Sessão
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window

Encerra Sessão
    Set Screenshot Directory    ../screenshots/
    Capture Page Screenshot
    Close Browser

Acessar a página home do site Automation Practice
    Go To                           ${URL}/index.php
    Title Should Be                 My Store
    Wait Until Element is Visible   xpath=//*[@id="block_top_menu"]/ul

Digitar o nome do produto "${PRODUTO_PESQUISADO}" no campo de pesquisa
    Input Text      id=search_query_top     ${PRODUTO_PESQUISADO}

Digitar o nome do produto "${PRODUTO_INEXISTENTE}" no campo de pesquisa


Clicar no botão pesquisar
    Click Element       name=submit_search

Conferir se o produto "${PRODUTO_PESQUISADO}" foi listado no site
    Page Should Contain Image       //*[@id='center_column']//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Title Should Be                 Search - My Store 

Conferir mensagem "${MESSAGE_ERROR} "${PRODUTO_INEXISTENTE}""