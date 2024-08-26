*** Settings ***
Library    SeleniumLibrary
Resource    ../page_objects/HomePage.robot

*** Variables ***
${URL}    https://www.natura.com.br
${BROWSER}    Chrome

*** Test Cases ***
Verificar Botao Entrar Visivel Na Pagina Inicial
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Botao Entrar Deveria Estar Visivel
    Close Browser