*** Settings ***
Documentation        Testes Mobile
Resource            ../resources/package.robot
Test Setup          Abrir aplicativo
Test Teardown       Fechar aplicativo

*** Test Case ***
Caso de Teste 01: Pesquisar canal “Prime Experts”
    [Tags]        pesquisar
    Dado que o cliente esteja na tela de Home
    E pesquise um vídeo sobre "Prime Experts"
    E acessar o canal da Prime
    Quando clicar em Inscrever-se
    Então será apresentado como Inscrito

Caso de Teste 02: Usar método Swipe na tela 
    [Tags]        swipe
    Abrir App
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

Caso de Teste 03: Logar no YouTube
    [Tags]        logar
    Abrir App
    Logar no aplicativo com a conta x
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo