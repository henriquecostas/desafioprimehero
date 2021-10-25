*** Settings ***
Documentation       Configurações de Setup e Teardown dos Testes Mobile.
Resource            package.robot

*** Keywords ***
Abrir aplicativo
    Set Appium Timeout              20
    Open Application                http://localhost:4723/wd/hub
    ...                             platformName=Android
    ...                             deviceName=70eeff9
    ...                             automationName=uiautomator2
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity
    ...                             autoGrantPermissions=true

Fechar aplicativo
    Close Application

