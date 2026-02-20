*** Settings ***
Resource    ../../resources/browser/browser_setup.robot
Resource    ../../keywords/web/login_keywords.robot
Resource    ../../config/environments/staging.robot
Resource    ../../variables/credentials.robot

Suite Setup       Setup Browser
Suite Teardown    Close Application

*** Test Cases ***
Save Driver Session
    Open Application For Session Creation

    Login With Credentials
    ...    ${DRIVER_USERNAME}
    ...    ${DRIVER_PASSWORD}

    Click Login Button Element

    Wait For Load State    networkidle

    Save Session
