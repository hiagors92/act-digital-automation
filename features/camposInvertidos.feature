*** Settings ***
Library    SeleniumLibrary
Resource    ../page_objects/HomePage.robot
Resource    ../page_objects/LoginPage.robot

*** Variables ***
${URL}    https://www.natura.com.br
${BROWSER}    Chrome
${EMAIL}    q%7&BiWJts6$uXK
${SENHA}     TEste@test.com

*** Test Cases ***
Fazer Login Com Campos Invertidos
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Botao Entrar Deveria Estar Visivel
    Clicar No Botao Entrar
    Campos Login Deveriam Estar Visiveis
    Preencher Campos De Login    ${EMAIL}    ${SENHA}
    Deve Solicitar Dados Validos
