*** Settings ***
Documentation     Navigate to main page
Library   DebugLibrary

*** Tasks ***
Navigate
    Navigate To Main Page
    Breakpoint
    Save Challenge Id
    Debug
