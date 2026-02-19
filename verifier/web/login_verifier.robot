*** Settings ***
Library    Browser
Resource   ../../pages/web/login_page.robot

*** Keywords ***
Verify Login Failed
    Wait For Elements State
    ...    ${ERROR_MESSAGE}
    ...    visible
    ...    timeout=10s

Verify Login Button Disabled
    Wait For Elements State
    ...    ${LOGIN_BUTTON}
    ...    disabled
    ...    timeout=10s