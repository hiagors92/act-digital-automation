*** Settings ***
Library    SeleniumLibrary
Resource    ../page_objects/HomePage.robot
Resource    ../page_objects/LoginPage.robot

*** Variables ***
${URL}    https://www.natura.com.br
${BROWSER}    Chrome

*** Test Cases ***
Verificar Campos De Login E Cadastrar Conta
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Botao Entrar Deveria Estar Visivel
    Clicar No Botao Entrar
    Campos Login Deveriam Estar Visiveis
    Close Browser