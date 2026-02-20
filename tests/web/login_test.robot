*** Settings ***
Resource    ../../resources/browser/browser_setup.robot
Resource    ../../keywords/web/login_keywords.robot
Resource    ../../keywords/web/dashboard_keywords.robot
Resource    ../../keywords/api/api_validation_keywords.robot
Resource    ../../keywords/web/auth_session_keywords.robot
Resource    ../../config/environments/staging.robot
Resource    ../../variables/credentials.robot
Resource    ../../helper/utils/utils.robot

Suite Setup         Setup Browser
Test Setup          Open Application
Test Teardown       Test Cleanup
Suite Teardown      Close Application

*** Test Cases ***
Login Driver Successfully
    [Tags]    Smoke    Positive

    ${promise}=    Promise To    Wait For Response    matcher=**/token/auth*
    Login With Credentials      ${DRIVER_USERNAME}    ${DRIVER_PASSWORD}
    Click Login Button Element
    ${response}=    Wait For    ${promise}
    Validate Login Response Success    ${response}
    Verify Dashboard Driver Apps Portal Loaded
    Verify Dashboard URL Loaded
    Verify All Menu Loaded

Login With Wrong Username
    [Tags]    Smoke    Negative

    ${random_username}=     Generate Random Username
    Login With Credentials      ${random_username}    ${DRIVER_PASSWORD}
    Click Login Button Element
    Verify Login Failed


Login With Wrong Password
    [Tags]    Smoke    Negative

    ${random_password}=     Generate Random String  10
    Login With Credentials      ${DRIVER_USERNAME}    ${INVALID_PASSWORD}
    Click Login Button Element
    Verify Login Failed


Login With Empty Username
    [Tags]    Smoke    Negative

    Login With Credentials      ${EMPTY}    ${DRIVER_PASSWORD}
    Verify Login Button Disabled


Login With Empty Password
    [Tags]    Smoke    Negative

    Login With Credentials      ${DRIVER_USERNAME}    ${EMPTY}
    Verify Login Button Disabled

Driver Success See Butuh Bantuan Popup
    [Tags]      Smoke   Positive

    Verify Butuh Bantuan Button Appear
    Click Butuh Bantuan Button
    Verify Help Modal Opened
    Verify Helpdesk Email Correct

Driver Logout Using Saved Session
    [Tags]      Smoke   Positive

    Open Application With Saved Session

    Verify Dashboard Driver Apps Portal Loaded
    Verify Dashboard URL Loaded

    Click Logout Button

    Verify Driver Successfully Logout
    Verify Dashboard Login URL Loaded