*** Settings ***
Documentation     Authorize

*** Tasks ***
Open Browser
    Start Process
    Input Username    2222
    Input Password    2222
    Submit Credentials
    Save Cookies
