*** Settings ***
Documentation       Todos os recursos que compõe o projeto de Testes Web.

##############################
#          Libraries         #
##############################
Library         SeleniumLibrary


##############################
#          Keywords          #
##############################
Resource    keywords/kws_desafioweb.robot

##############################
#            Pages           #
##############################
Resource    pages/pages_home.robot
Resource    pages/pages_pesquisa.robot
Resource    pages/pages_summerdresses.robot
Resource    pages/pages_login.robot
Resource    pages/pages_cadastro.robot

##############################
#          functions         #
##############################
Resource    functions.robot

##############################
#            Hooks           #
##############################
Resource    hooks.robot