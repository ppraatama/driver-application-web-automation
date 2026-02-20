*** Settings ***
Library    Browser
Library    OperatingSystem
Resource   ../../config/environments/staging.robot

*** Variables ***
${STORAGE_DIR}     ${EXECDIR}/storage
${STORAGE_PATH}    ${STORAGE_DIR}/driver_state.json

*** Keywords ***
Setup Browser
    New Browser    browser=${BROWSER}    headless=${HEADLESS}

Open Application For Session Creation
    Create Directory    ${STORAGE_DIR}
    New Context
    New Page    ${BASE_URL}

Save Session
    ${internal}=    Save Storage State

    Log    Internal state file: ${internal}

    Copy File    ${internal}    ${STORAGE_PATH}

    File Should Exist    ${STORAGE_PATH}

    Log    Session copied to ${STORAGE_PATH}

Open Application With Saved Session
    File Should Exist    ${STORAGE_PATH}

    &{context}=    Create Dictionary
    ...    storageState=${STORAGE_PATH}

    New Context    &{context}

    New Page    ${BASE_URL}

Close Application
    Close Browser