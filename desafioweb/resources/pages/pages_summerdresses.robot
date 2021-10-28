*** Settings ***
Documentation       Variáveis e elementos da página Summer Dresses do Teste Web  

*** Variables *** 
&{SDRESSES} 
...    TITLE=Summer Dresses - My Store
...    CTGHEADER=//span[@class='cat-name'][contains(.,'Summer Dresses')]
...    CONTAINER_PRODUTOS=//span[@class='cat-name'][contains(.,'Summer Dresses')]
...    SUBMENU=//a[@title='Summer Dresses'] 

