*** Settings ***
Documentation     Navigate to main page with ID
Library   DebugLibrary

*** Tasks ***
Navigate
    Get Challenge Id
    #Breakpoint
    Navigate To Main Page With Id
    Restore Cookies
    Submit Credentials
    #Breakpoint
    Debug
    #Execute Javascript    alert("pause")
    #Sleep    10 minutes
