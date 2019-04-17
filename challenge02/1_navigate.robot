*** Settings ***
Documentation     Navigate to main page with ID
Library   DebugLibrary

*** Tasks ***
Navigate
    Get Challenge Id
    Navigate To Main Page With Id
    Restore Cookies
    Submit Credentials

