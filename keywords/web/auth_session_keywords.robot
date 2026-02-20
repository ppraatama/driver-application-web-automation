*** Settings ***
Resource    login_keywords.robot
Resource    dashboard_keywords.robot
Resource    ../../resources/browser/browser_setup.robot
Resource    ../../variables/credentials.robot
Library     Browser

*** Keywords ***
Login Driver And Save Session
    Open Application

    ${promise}=    Promise To    Wait For Response    matcher=**/token/auth*
    Login With Credentials    ${DRIVER_USERNAME}    ${DRIVER_PASSWORD}
    Click Login Button Element

    ${response}=    Wait For    ${promise}

    Verify Dashboard Driver Apps Portal Loaded

    Save Session