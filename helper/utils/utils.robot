*** Settings ***
Library     DateTime

*** Keywords ***
Generate Random Email
    [Arguments]    ${prefix}=test    ${domain}=mail.com
    ${random}=    Evaluate    random.randint(10000,99999)    modules=random
    ${email}=     Set Variable    ${prefix}${random}@${domain}
    RETURN    ${email}

Generate Random Username
    [Arguments]    ${prefix}=user
    ${random}=    Evaluate    random.randint(10000,99999)    modules=random
    ${username}=  Set Variable    ${prefix}${random}
    RETURN    ${username}

Generate Random Phone Number
    [Arguments]    ${prefix}=08
    ${random}=    Evaluate    random.randint(100000000,999999999)    modules=random
    ${phone}=     Set Variable    ${prefix}${random}
    RETURN    ${phone}

Generate Random String
    [Arguments]    ${length}=8
    ${chars}=     Set Variable    abcdefghijklmnopqrstuvwxyz0123456789
    ${result}=    Evaluate    ''.join(random.choice('${chars}') for i in range(${length}))    modules=random
    RETURN    ${result}

Generate Random Number
    [Arguments]    ${min}=1    ${max}=1000
    ${number}=    Evaluate    random.randint(${min}, ${max})    modules=random
    RETURN    ${number}

Get Current Timestamp
    ${timestamp}=    Get Time    epoch
    RETURN    ${timestamp}

Get Current Date
    ${date}=    Get Current Date    result_format=%Y-%m-%d
    RETURN    ${date}

Get Current Date Time
    ${datetime}=    Get Current Date    result_format=%Y-%m-%d %H:%M:%S
    RETURN    ${datetime}

Add Days To Current Date
    [Arguments]    ${days}
    ${date}=    Get Current Date
    ${new_date}=    Add Time To Date    ${date}    ${days} days
    RETURN    ${new_date}

Convert Timestamp To Date
    [Arguments]    ${timestamp}
    ${date}=    Convert Time    ${timestamp}    result_format=%Y-%m-%d %H:%M:%S
    RETURN    ${date}