*** Settings ***
Resource    ../../resources/browser/browser_setup.robot
Resource    ../../keywords/web/dashboard_keywords.robot
Resource    ../../verifier/web/login_verifier.robot

Suite Setup       Setup Browser
Test Setup        Open Application With Saved Session
Suite Teardown    Close Application

*** Test Cases ***
Driver Logout Using Saved Session
    Open Application With Saved Session

    Verify Dashboard Driver Apps Portal Loaded
    Click Logout Button
    Verify Driver Successfully Logout