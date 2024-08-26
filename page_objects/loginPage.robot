*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_FIELD_CSS}    css=input[name='login']
${PASSWORD_FIELD_CSS}    css=input[type='password']
${NAME_FIELD_CSS}    css=input[name='firstName']
${LAST_NAME_FIELD_CSS}    css=input[name='lastName']
${CONFIRM_PASSWORD_FIELD_CSS}    css=input[name='confirmPassword']
${CPF_FIELD_CSS}    css=input[name='cpf']
${CELULAR_FIELD_CSS}    css=input[name='homePhone']
${CADASTRAR_CONTA_BUTTON_XPATH}    xpath=//button[.//span[text()='Cadastrar conta']]
${EMAIL}    css=input[name='email']
${CADASTRAR_CONTA_BUTTON_CSS}    xpath=//button[span[text()='cadastrar conta']]
${CHECKBOX_TERMS_XPATH}    xpath=//input[@name='accepteterms']


*** Keywords ***
Campos Login Deveriam Estar Visiveis
    Wait Until Element Is Visible    ${EMAIL_FIELD_CSS}    timeout=10
    Element Should Be Visible    ${EMAIL_FIELD_CSS}
    Element Should Be Visible    ${PASSWORD_FIELD_CSS}
    Element Should Be Visible    ${CADASTRAR_CONTA_BUTTON_XPATH}

Clicar No Botao Cadastrar Conta
    Click Element    ${CADASTRAR_CONTA_BUTTON_XPATH}

Campos Cadastro Deveriam Estar Visiveis
    Wait Until Element Is Visible    ${NAME_FIELD_CSS}    timeout=10
    Element Should Be Visible    ${NAME_FIELD_CSS}
    Element Should Be Visible    ${LAST_NAME_FIELD_CSS}
    
    Element Should Be Visible    ${PASSWORD_FIELD_CSS}
    Element Should Be Visible    ${CONFIRM_PASSWORD_FIELD_CSS}
    Element Should Be Visible    ${CPF_FIELD_CSS}
    Element Should Be Visible    ${CELULAR_FIELD_CSS}

    
    
Preencher Campos De Cadastro
    [Arguments]    ${nome}    ${sobrenome}    ${email}    ${senha}    ${cpf}    ${celular}
    Input Text    ${NAME_FIELD_CSS}    ${nome}
    Input Text    ${LAST_NAME_FIELD_CSS}    ${sobrenome}
    Input Text    ${EMAIL}    ${email}
    Input Password    ${PASSWORD_FIELD_CSS}    ${senha}
    Input Password    ${CONFIRM_PASSWORD_FIELD_CSS}    ${senha}
    Input Text    ${CPF_FIELD_CSS}    ${cpf}
    Input Text    ${CELULAR_FIELD_CSS}    ${celular}
    Click Element    ${CADASTRAR_CONTA_BUTTON_CSS}