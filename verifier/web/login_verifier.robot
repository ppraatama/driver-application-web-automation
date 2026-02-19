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

Verify Driver Successfully Logout
    Wait For Load State    networkidle

    Wait For Elements State
    ...    ${LOGIN_PAGE_CONTAINER}
    ...    visible
    ...    timeout=${TIMEOUT}

Verify Dashboard Login URL Loaded
    ${url}=    Get Url

    Should Be Equal
    ...    ${url}
    ...    https://dev-signin.bluebird.id/login?redirect_uri=https://stg-driverappsportal.bluebird.id&scope=openid,email,profile,offline_access,refresh_token&response_type=id_token%20token%20code&client_id=1234&cookies=1