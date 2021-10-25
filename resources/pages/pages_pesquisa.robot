*** Settings ***
Documentation       Variáveis e elementos da página de Resultado de Pesquisa do Teste Web  

*** Variables *** 
&{SEARCHRESULT}     
...    TITLE=Search - My Store
...    ERRO_LOCATOR=//p[@class='alert alert-warning']
...    ERRO_MENSAGEM=No results were found for your search "${HOME.PRODUTO_INEXISTENTE}"

