*** Settings ***
Resource    ../../pages/web/dashboard_page.robot
Resource    ../../verifier/web/dashboard_verifier.robot

*** Keywords ***
Verify Dashboard Loaded
    Verify Dashboard Driver Apps Portal Loaded
    Verify Dashboard URL Loaded