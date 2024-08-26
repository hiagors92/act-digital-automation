*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ENTRAR_BUTTON_CSS}    css=.py-0

*** Keywords ***
Botao Entrar Deveria Estar Visivel
    Wait Until Element Is Visible    ${ENTRAR_BUTTON_CSS}    timeout=10
    Element Should Be Visible    ${ENTRAR_BUTTON_CSS}

Clicar No Botao Entrar
    Click Element    ${ENTRAR_BUTTON_CSS}