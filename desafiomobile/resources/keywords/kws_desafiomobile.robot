*** Settings ***
Documentation        Todas as keywords dos Testes Mobile.
Resource            ../package.robot

*** Keywords ***
########### Caso de Teste 01 ###########
Dado que o cliente esteja na tela de Home
    Wait Until Element Is Visible        ${HOME.HOME}
    Wait Until Element Is Visible        ${HOME.LOGO}

E pesquise um vídeo sobre "${PESQUISA}"
    Click Element                        accessibility_id=Pesquisar
    Input Text                           id=search_edit_text            ${PESQUISA}
    Press Keycode                        66

E acessar o canal da Prime
    Wait Until Element Is Visible        xpath=//android.view.ViewGroup[contains(@content-desc, 'Prime Experts - Parceria entre Prime Control e UniBrasil')]
    Click Element                        xpath=//android.view.ViewGroup[contains(@content-desc, 'Prime Experts - Parceria entre Prime Control e UniBrasil')]

Quando clicar em Inscrever-se
    Click Element                        accessibility_id=Inscreva-se em Prime Control.
    Click Element                        accessibility_id=Inscreva-se em Prime Control.

Então será apresentado como Inscrito
    Wait Until Element Is Visible        accessibility_id=Cancelar inscrição de Prime Control.

Abrir App   
    Wait Until Element Is Visible        xpath=//*[contains(@text, 'Início')]
    Wait Until Element Is Visible        xpath=//*[@class='android.widget.ImageView'][contains(@content-desc,'YouTube')]

Logar no aplicativo com a conta x   
    Click Element       ${HOME.MENU_CONTA}

    Wait Until Element is Visible      ${HOME.NOVA_CONTA}
    Click Element                      ${HOME.NOVA_CONTA}

    Wait Until Element is Visible      ${LOGIN.AUTH_PAGE}
    Input Text                         ${LOGIN.INPUT}      ${USER.EMAIL}
    Click Element                      ${NEXT_BTN}
 
    Wait Until Element is Visible      ${LOGIN.PWD_AUTH_PAGE}
   
    Input Text                         ${LOGIN.INPUT}      ${USER.SENHA}
    Click Element                      ${NEXT_BTN}
    Click Element                      ${LOGIN.AGREE}
    Click Element                      ${LOGIN.BACKUP_SWITCH}

    Wait Until Element is Visible      ${LOGIN.MAIS_BTN}
    Click Element                      ${LOGIN.MAIS_BTN}

    Wait Until Element is Visible      ${LOGIN.ACC_BTN}
    Click Element                      ${LOGIN.ACC_BTN}

Rolar tela
    [Arguments]     ${S_X}  ${S_Y}  ${E_X}  ${E_Y}  
    Swipe	${S_X}  ${S_Y}  ${E_X}  ${E_Y} 
Entrar no menu “Explorar”
	Rolar tela	    0   495     0   1148
    Click Element                      ${HOME.EXPLORAR}
    Wait Until Element is Visible      ${HOME.EXPLORAR_VALID}

Usar swipe de tela até o 10 item da tela
    FOR		${SWIPE_COUNTER}	IN RANGE	0	10
	    Swipe	0	1952	0	1293
	    ${SWIPE_COUNTER}=	Set Variable	${SWIPE_COUNTER}+1
	    Exit For Loop If	${SWIPE_COUNTER}== 10
    END

Clicar no vídeo
    Wait Until Element is Visible       ${HOME.VIDEO_CONTAINER}
    Click Element                       ${HOME.VIDEO_CONTAINER}