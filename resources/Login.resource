*** Settings ***
Test Template    Login with invalid credentials should fail

*** Keywords ***
Login with invalid credentials should fail
    [Arguments]    ${username}    ${password}
    Log Many    ${username}    ${password}