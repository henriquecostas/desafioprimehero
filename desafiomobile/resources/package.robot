*** Settings ***
Documentation       Todos os recursos que compõem o projeto de Testes Mobile.

##############################
#          Libraries         #
##############################
Library     AppiumLibrary

##############################
#          Keywords          #
##############################
Resource    keywords/kws_desafiomobile.robot

##############################
#           Screens          #
##############################
Resource    ./screens/screens_home.robot
Resource    ./screens/screens_login.robot

##############################
#            Hooks           #
##############################
Resource    hooks.robot
