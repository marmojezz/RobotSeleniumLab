*** Settings ***
Library             SeleniumLibrary
Library    Dialogs
Resource            ../common.resource

*** Keywords ***
Login com Usuario e Senha
    [Arguments]       ${username}    ${password}
    Open Browser      url=${url}  browser=${browser}
    Wait Until Element Contains    id="loginform"  ${True}
    Input Text        id:input-text-CPF    ${username}
    Input Password    id:input-password-Senha    ${username}
    Pause Execution  teste
    [Teardown]  Close All Browsers