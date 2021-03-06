*** Settings ***
Documentation	   Casos de testes Web.
Resource           ../resources/package.robot
Test Setup         Inicia Sessão
Test Teardown      Encerra Sessão

*** Test Cases ***
Caso de Teste 02 Pesquisar produto inexistente
	[tags]		caso02
	Acessar a página home do site Automation Practice
    Digitar o nome do produto "${HOME.PRODUTO_INEXISTENTE}" no campo de pesquisa
    Clicar no botão pesquisar
	Conferir mensagem de erro "${SEARCHRESULT.ERRO_MENSAGEM}"

Caso de Teste 03: Listar Produtos
	[tags]		caso03
	Acessar a página home do site Automation Practice
	Passar o mouse por cima da categoria "${HOME.MENU_WOMEN}" no menu principal superior da categoria
	Clicar na sub categoria "${SDRESSES.SUBMENU}"
	Conferir se os produtos da sub-categoria "${SDRESSES.SUBMENU}" foram mostrados na página

Caso de Teste 04: Adicionar Cliente
	[tags]		caso04
	Acessar a página home do site Automation Practice
	Clicar em "Sign in"
	Informar um e-mail válido 
	Clicar em "Create an account"
	Preencher os dados obrigatórios
	Submeter cadastro
	Conferir se o cadastro foi efetuado com sucesso