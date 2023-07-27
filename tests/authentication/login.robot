*** Settings ***
Metadata            Version       1.0
Library             DataDriver    file=data/authentication/login.csv
Library             SeleniumLibrary
Library    Dialogs
Resource            ../../resources/common.resource


Test Template     Login com Usuario e Senha

*** Test Cases ***
Login com usuario ${username} e senha ${password}    Default    UserData

*** Keywords ***
Login com Usuario e Senha
    [Arguments]       ${username}    ${password}
    Log Many    ${username}    ${password}
    Open Browser      url=${url}  browser=${browser}  options=add_experimental_option("excludeSwitches", ["enable-logging"])
    Wait For Condition	return document.readyState == "complete"
    Input Text        id:input-text-CPF    ${username}
    Input Text        input-password-Senha    ${password}
    Click Button      locator   
    Pause Execution   
    [Teardown]  Close All Browsers


    