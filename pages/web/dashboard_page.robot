*** Settings ***
Library    Browser

*** Variables ***
${DASHBOARD_PORTAL_TEXT}    xpath=//span[normalize-space()="Bluebird Driver Portal"]
${PROFILE_ICON}             xpath=//div[contains(@class,"profile")]