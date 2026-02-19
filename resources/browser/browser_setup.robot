*** Settings ***
Library    Browser

*** Keywords ***
Setup Browser
    New Browser
    ...    ${BROWSER}
    ...    headless=${HEADLESS}

Open Application
    New Context
    New Page    ${BASE_URL}

Close Application
    Close Context
    Close Browser

Test Cleanup
    Take Screenshot
    Close Context