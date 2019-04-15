*** Settings ***
Documentation     A resource file with reusable keywords and variables specific to your use case

*** Variables ***
${MAIN URL}       https://challenge.flinks.io/

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
    Input Text    username   ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password   ${password}

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
