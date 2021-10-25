*** Settings ***
Documentation       Variáveis e elementos da página Home do Teste Web  

*** Variables *** 
&{HOME} 
...    TITLE=My Store
...    MENU_CATEGORIAS=//*[@id="block_top_menu"]/ul
...    PESQUISA_INPUT=search_query_top
...    PESQUISA_BTN=submit_search
...    PRODUTO_EXISTENTE=blouse
...    PRODUTO_INEXISTENTE=margarina
...    MENU_WOMEN=//a[@title='Women']
...    NAV=//div[@class='nav']
...    SIGNIN_BTN=//a[@class='login']