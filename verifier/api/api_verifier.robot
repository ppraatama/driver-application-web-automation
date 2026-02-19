*** Settings ***
Library    BuiltIn
Library    Collections

*** Keywords ***
Verify Login API Success
    [Arguments]    ${response}

    Should Be Equal As Integers    ${response.status}    200

    ${body}=    Set Variable    ${response.body}

    Dictionary Should Contain Key    ${body}    access_token
    Dictionary Should Contain Key    ${body}    token_type

    Should Be Equal
    ...    ${body}[token_type]
    ...    bearer