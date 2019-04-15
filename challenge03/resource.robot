*** Settings ***
Documentation     A resource file with reusable keywords and variables specific to your use case

*** Variables ***
${MAIN URL}        https://challenge.flinks.io/Authorize

*** Keywords ***
Start Process
    Click Link    START

Go Back
    Click Link    BACK

Log in
    Input Username    2222
    Input Password    2222
    Submit Credentials

Input Username
    [Arguments]    ${username}
    ${PRESENT}=    Run Keyword And Return Status    Page Should Contain Element    name:username
    Run Keyword If    ${PRESENT}   Input Text    username    ${username}    ELSE    Input Text    username2    ${username}   

Input Password
    [Arguments]    ${password}
    ${PRESENT}=    Run Keyword And Return Status    Page Should Contain Element    name:password
    Run Keyword If    ${PRESENT}    Input Text    password   ${password}    ELSE    Input Text    password2   ${password}

Submit Credentials
    Click Button    Sign In

Token Page Should Be Open
    Element Should Contain    xpath://html/body/div/div/div[2]/h3    Congrats! You are in.

Save Token
    ${TOKEN}=    Get Text    xpath://html/body/div/div/div[2]/p[1]/b
    Append To File    tokens.txt    ${TOKEN}
    Append To File    tokens.txt    ${\n}

Save Challenge Id
    ${ID}=    Get Text    xpath://html/body/div/div/div[2]/p[7]/b
    Append To File    id.txt    ${ID}

Get Challenge Id
    ${CHALLENGE_ID}=    Get File    id.txt
    Set Suite Variable    ${CHALLENGE_ID}

Navigate To Main Page With Id
    Go To    ${MAIN URL}/${CHALLENGE_ID}
    Login Page Should Be Open

Simulate Mouse Movement
    Execute Javascript     numberOfOccurenceMove=9;$(function(){$('body').trigger('mousemove');});   