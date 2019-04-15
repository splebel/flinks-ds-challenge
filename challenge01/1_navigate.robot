*** Settings ***
Documentation     Navigate to main page
Library   DebugLibrary

*** Tasks ***
Navigate
    Navigate To Main Page
    Breakpoint
    Save Challenge Id
    Debug
    #Execute Javascript    alert("pause")
    #Sleep    10 minutes
