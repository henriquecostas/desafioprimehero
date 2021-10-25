*** Settings ***
Documentation       Variáveis e elementos da Tela de Login do Teste Mobile - Youtube  

*** Variables ***
&{LOGIN}
...     AUTH_PAGE=//*[@class='android.view.View'][contains(@text,'Fazer login')]
...     EMAIL_INPUT=//*[@class='android.widget.EditText']
...     NEXT_BTN=//*[@class='android.widget.Button'][contains(@text,'Próxima')]
...     PWD_AUTH_PAGE=//*[@class='android.widget.Button'][contains(@text,'Esqueceu a senha?')]
...     AGREE=//*[@class='android.widget.Button'][contains(@text,'Concordo')]
...     BACKUP_SWITCH=//*[@class='android.widget.Switch'][contains(@text,'ATIVADO')]
...     MAIS_BTN=//*[@class='android.widget.Button'][contains(@text,'Mais')]
...     ACC_BTN=//*[@class='android.widget.Button'][contains(@text,'Aceitar')]



