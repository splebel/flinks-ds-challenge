*** Settings ***
Documentation     Get tokens

*** Tasks ***
Get Tokens
    Token Page Should Be Open
    : FOR    ${INDEX}    IN RANGE    1    500
        \    Log    ${INDEX}
        \    Save Token
        \    Go Back
        \    Simulate Mouse Movement
        \    Log In
