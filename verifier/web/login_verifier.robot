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

Verify Help Modal Opened
    Wait For Elements State
    ...    ${HELP_MODAL_TITLE}
    ...    visible

Verify Helpdesk Email Correct
    Wait For Elements State
    ...    ${HELP_MODAL_EMAIL}
    ...    visible

Verify Butuh Bantuan Button Appear
    Wait For Elements State
    ...     ${BUTUH_BANTUAN_BUTTON}
    ...     visible