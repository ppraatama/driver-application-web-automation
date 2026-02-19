*** Settings ***
Resource    ../../pages/web/dashboard_page.robot
Resource    ../../verifier/web/dashboard_verifier.robot

*** Keywords ***
Click Akun Pengemudi Button Menu
    Click               ${AKUN_PENGEMUDI_BUTTON}

Click Manajemen Pesan Button Menu
    Click               ${MANAJEMEN_PESAN_BUTTON}

Click Pemantauan Button Menu
    Click               ${PEMANTAUAN_BUTTON}

Click Konfigurasi Fitur DA Button Menu
    Click               ${KONFIGURASI_FITUR_DA_BUTTON}

Click Reporting Button Menu
    Click               ${REPORTING_BUTTON}

Click Manajemen Role Button Menu
    Click               ${MANAJEMEN_ROLE_BUTTON}

Click Logout Button
    Click               ${ACCOUNT_BUTTON}
    Click               ${LOGOUT_BUTTON}