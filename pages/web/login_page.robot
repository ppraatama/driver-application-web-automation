*** Settings ***
Library    Browser

*** Variables ***
${USERNAME_FIELD}    input[name="user_id"]
${PASSWORD_FIELD}    input[name="user_secret"]
${LOGIN_BUTTON}      button[type="submit"]
${ERROR_MESSAGE}     xpath=//div[@role="alert"]