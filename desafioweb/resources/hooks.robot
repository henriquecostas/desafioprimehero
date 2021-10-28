*** Settings ***
Documentation       Configurações de Setup e Teardown dos Testes Web.

Resource            package.robot

*** Variables ***
${URL}                  http://automationpractice.com      
${BROWSER}              chrome

*** Keywords ***
Inicia Sessão
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window

Encerra Sessão
    Set Screenshot Directory    ../primeherorep/desafioweb/screenshots/   
    Capture Page Screenshot
    Close Browser

