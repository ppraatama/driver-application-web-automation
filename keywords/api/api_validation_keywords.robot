*** Settings ***
Resource    ../../verifier/api/api_verifier.robot

*** Keywords ***
Validate Login Response Success
    [Arguments]    ${response}

    Verify Login API Success    ${response}