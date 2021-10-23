*** Settings ***
Documentation   Aqui estarão presentes todos os recursos que compõe o projeto.

Library     SeleniumLibrary
Library     AppiiumLibrary

*** Keywords ***
Resource    /resources/keywords/kws_mobileautomation.robot
Resource    /resources/keywords/kws_webautomation.robot
Resource    ../resources/pages/pages_home.robot