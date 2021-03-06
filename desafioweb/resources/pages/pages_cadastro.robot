*** Settings ***
Documentation       Variáveis e elementos da página de Cadastro de Usuário do Teste Web  

*** Variables *** 
# ${EMAIL_LOOP}
&{PGCADASTRO}
...     SUBMIT_BTN=submitAccount
...     FORM1=create-account_form
...     FORM2=account-creation_form
...     RADIO_GENDER_FML=id_gender
...     CHBOX_NEWSL=newsletter
...     ERRO=alert alert-danger
...     ERRO_TEXT=An account using this email address has already been registered. Please enter a valid password or request a new one. 
...     WELCOME=//p[@class='info-account']
...     LOGOUT_BTN=//a[@class='logout']
################################
#             inputs           #
################################
...     INPUT_NOME=customer_firstname
...     INPUT_SOBRENOME=customer_lastname
...     INPUT_PW=passwd
...     INPUT_EMPRESA=company
...     INPUT_ENDERECO1=address1
...     INPUT_ENDERECO2=address2
...     INPUT_CIDADE=city
...     INPUT_ESTADO=id_state
...     INPUT_PAIS=id_country
...     INPUT_CEP=postcode
...     INPUT_FEEDBACK=other
...     INPUT_REFERENCIA=alias
...     INPUT_PHONE1=phone_mobile
...     INPUT_PHONE2=phone
################################
#             lists            #
################################
...     LSITEM_DATA=days
...     LSITEM_MES=months
...     LSITEM_ANO=years

&{SEXO}
...     M=1
...     F=2
...     VALID=0

&{USER}
...     EMAIL=emaildeexemplo1@dominio.com
...     SENHA=123456
...     NOME=Henri
...     SOBRENOME=Costa
...     IDADE=23
...     ENDERECO=Meu endereço 
...     COMPLEMENTO=nº 00, ap.11
...     REFERENCIA=SEGUNDA RUA
...     CEP=40000
...     DATA=20
...     MES=11
...     ANO=1997
...     SEXO=Masculino
...     EMPRESA=Prime Control
...     CIDADE=Salvador
...     ESTADO=Bahia
...     PAIS=Brasil
...     PHONE1=7199999999
...     PHONE2=7133333333
...     FEEDBACK=poucas ideias

