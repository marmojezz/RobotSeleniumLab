*** Settings ***
Library           DataDriver    file=data/Login.csv
Test Template     Login With User And Password

*** Test Cases ***
Login with user ${username} and password ${password}    Default    UserData

*** Keywords ***
Login With User And Password
    [Arguments]    ${username}    ${password}
    Log Many    ${username}    ${password}