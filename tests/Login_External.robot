*** Settings ***
Library           DataDriver    file=data/Login.csv
Test Template     Login com Usuario e Senha

*** Test Cases ***
Login com usuario ${username} e senha ${password}    Default    UserData

*** Keywords ***
Login com Usuario e Senha
    [Arguments]    ${username}    ${password}
    Log Many    ${username}    ${password}