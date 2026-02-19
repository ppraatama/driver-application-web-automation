*** Settings ***
Library    Browser

*** Variables ***
${USERNAME_FIELD}               input[name="user_id"]
${PASSWORD_FIELD}               input[name="user_secret"]
${LOGIN_BUTTON}                 button[type="submit"]
${ERROR_MESSAGE}                xpath=//div[@role="alert"]
${BUTUH_BANTUAN_BUTTON}         xpath=//a[normalize-space()="Butuh bantuan ?"]
${HELP_MODAL_TITLE}             xpath=//h1[normalize-space()="Butuh Bantuan"]
${HELP_MODAL_EMAIL}             xpath=//a[contains(@href,"helpdesk@bluebirdgroup.com")]
${LOGIN_PAGE_CONTAINER}         css=.container__login--form-base