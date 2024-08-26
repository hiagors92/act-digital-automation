*** Settings ***
Library    SeleniumLibrary
Resource    ../page_objects/HomePage.robot
Resource    ../page_objects/LoginPage.robot

*** Variables ***
${URL}    https://www.natura.com.br
${BROWSER}    Chrome
${NOME}    João
${SOBRENOME}    Silva
${EMAIL}    email
${SENHA}    Senha@2024
${CPF}    123.456.789-09
${CELULAR}    11987654321

*** Test Cases ***
Cadastrar Nova Conta Com Campos Validos
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Botao Entrar Deveria Estar Visivel
    Clicar No Botao Entrar
    Campos Login Deveriam Estar Visiveis
    Clicar No Botao Cadastrar Conta
    Campos Cadastro Deveriam Estar Visiveis
    Preencher Campos De Cadastro    ${NOME}    ${SOBRENOME}    ${EMAIL}    ${SENHA}    ${CPF}    ${CELULAR}
    