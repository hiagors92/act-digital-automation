*** Settings ***
Library    SeleniumLibrary
Resource    ../page_objects/HomePage.robot
Resource    ../page_objects/LoginPage.robot

*** Variables ***
${URL}    https://www.natura.com.br
${BROWSER}    Chrome
${EMAIL}     TEste@test.com
${SENHA}    

*** Test Cases ***
Fazer Login Sem Email
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Botao Entrar Deveria Estar Visivel
    Clicar No Botao Entrar
    Campos Login Deveriam Estar Visiveis
    Preencher Campos De Login    ${EMAIL}    ${SENHA}
    Deve Mostrar Mensagem De Erro
