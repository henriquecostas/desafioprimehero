*** Settings ***
Resource           ../resources/keywords/kws_desafioweb.robot
Test Setup         Inicia Sessão
Test Teardown      Encerra Sessão

*** Test Cases ***
Caso de Teste 02 Pesquisar produto inexistente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "${PRODUTO_INEXISTENTE}" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "${MESSAGE_ERROR} "${PRODUTO_INEXISTENTE}""

Caso de Teste 03: Listar Produtos
	Acessar a página home do site
	Passar o mouse por cima da categoria "Women" no menu principal superior da categoria
	Clicar na sub categoria "Summer Dresses"
	Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página

Cado de Teste 04: Adicionar Cliente
	Acessar a página home do site
	Clicar em "Sign in"
	Informar um e-mail válido
	Clicar em "Create an account"
	Preencher os dados obrigatórios
	Submeter cadastro
	Conferir se o cadastro foi efetuado com sucesso




	##############################################
	#	  Praticando a utilização do Gherkin	#
	#############################################

# Caso de Teste 02 Pesquisar produto inexistente (com Gherkin)
# 	Dado que o cliente esteja na página home do site.
# 	Quando pesquisar pelo produto "NãoExistente" no campo de pesquisa
# 	E clicar no botão pesquisar
# 	Então a mensagem "No results were found for your search "itemNãoExistente"" deve ser mostrada na página de resultado da busca


# Caso de Teste 03: Listar Produtos (com Gherkin)
# 	Acessar a página home do site
# 	Passar o mouse por cima da categoria "Women" no menu principal superior da categoria
# 	Clicar na sub categoria "Summer Dresses"
# 	Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página

# Cado de Teste 04: Adicionar Cliente (com Gherkin)
# 	Acessar a página home do site
# 	Clicar em "Sign in"
# 	Informar um e-mail válido
# 	Clicar em "Create an account"
# 	Preencher os dados obrigatórios
# 	Submeter cadastro
# 	Conferir se o cadastro foi efetuado com sucesso