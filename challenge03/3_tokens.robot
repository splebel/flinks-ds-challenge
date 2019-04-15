*** Settings ***
Documentation     Get tokens

*** Tasks ***
Get Tokens
    Token Page Should Be Open
#    while true {
#        if access blocked
#            next
#
#        login 2222
#        save token
#
#    }

    : FOR    ${INDEX}    IN RANGE    1    500
        \    Log    ${INDEX}
        \    Save Token
        \    Go Back
        \    Simulate Mouse Movement
        \    Log In


# Antibot #11




    Breakpoint
