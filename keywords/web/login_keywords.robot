*** Settings ***
Resource    ../../pages/web/login_page.robot
Resource    ../../verifier/web/login_verifier.robot
Library     Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Fill Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Fill Text    ${PASSWORD_FIELD}    ${password}

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}

Click Login Button Element
    Click    ${LOGIN_BUTTON}

Click Butuh Bantuan Button
    Click   ${BUTUH_BANTUAN_BUTTON}