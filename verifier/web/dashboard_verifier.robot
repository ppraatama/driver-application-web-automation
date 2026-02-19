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

Verify All Menu Loaded
    Wait For Elements State
    ...    ${ACCOUNT_BUTTON}
    ...    visible
    ...    timeout=${TIMEOUT}

    Wait For Elements State
    ...    ${MANAJEMEN_PESAN_BUTTON}
    ...    visible
    ...    timeout=${TIMEOUT}

    Wait For Elements State
    ...    ${PEMANTAUAN_BUTTON}
    ...    visible
    ...    timeout=${TIMEOUT}

    Wait For Elements State
    ...    ${KONFIGURASI_FITUR_DA_BUTTON}
    ...    visible
    ...    timeout=${TIMEOUT}

    Wait For Elements State
    ...    ${REPORTING_BUTTON}
    ...    visible
    ...    timeout=${TIMEOUT}

    Wait For Elements State
    ...    ${MANAJEMEN_ROLE_BUTTON}
    ...    visible
    ...    timeout=${TIMEOUT}