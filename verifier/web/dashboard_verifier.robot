*** Settings ***
Resource   ../../pages/web/dashboard_page.robot
Resource   ../../config/environments/staging.robot

*** Keywords ***
Verify Dashboard Driver Apps Portal Loaded
    Wait For Load State    networkidle

    Wait For Elements State
    ...    ${DASHBOARD_PORTAL_TEXT}
    ...    visible
    ...    timeout=${TIMEOUT}

Verify Dashboard URL Loaded
    ${url}=    Get Url

    Should Be Equal
    ...    ${url}
    ...    https://stg-driverappsportal.bluebird.id//