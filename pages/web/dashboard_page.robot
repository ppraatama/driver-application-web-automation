*** Settings ***
Library    Browser

*** Variables ***
${DASHBOARD_PORTAL_TEXT}            xpath=//span[normalize-space()="Bluebird Driver Portal"]
${PROFILE_ICON}                     xpath=//div[contains(@class,"profile")]
${ACCOUNT_BUTTON}                   xpath=//button[@data-testid="account-button"]
${AKUN_PENGEMUDI_BUTTON}            xpath=//button[.//span[normalize-space()="Akun Pengemudi"]]
${MANAJEMEN_PESAN_BUTTON}           xpath=//button[.//span[normalize-space()="Manajemen Pesan"]]
${PEMANTAUAN_BUTTON}                xpath=//button[.//span[normalize-space()="Pemantauan"]]
${KONFIGURASI_FITUR_DA_BUTTON}      xpath=//button[.//span[normalize-space()="Konfigurasi Fitur DA"]]
${REPORTING_BUTTON}                 xpath=//button[.//span[normalize-space()="Reporting"]]
${MANAJEMEN_ROLE_BUTTON}            xpath=//button[.//span[normalize-space()="Manajemen Role"]]
${LOGOUT_BUTTON}                    xpath=//button[normalize-space()="Logout"]