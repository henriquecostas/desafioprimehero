*** Settings ***
Documentation       Variáveis e elementos da Tela Home do Teste Mobile - Youtube  

*** Variables ***
&{USER}
...     EMAIL=osonhodeserumqa
...     SENHA=henriqueqa123

&{HOME}
...     HOME=//*[contains(@text, 'Início')]
...     LOGO=//*[@class='android.widget.ImageView'][contains(@content-desc,'YouTube')]
...     MENU_CONTA=//android.widget.ImageView[@content-desc="Conta"]
...     NOVA_CONTA=//*[@class='android.widget.TextView'][contains(@text,'Adicionar conta')]
...     EXPLORAR=//*[@class='android.widget.TextView'][contains(@text,'Explorar')]
...     EXPLORAR_VALID=//android.view.ViewGroup[@content-desc="Em alta"]
...     VIDEO_CONTAINER=//*[@class='android.view.View']
