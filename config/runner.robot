*** Settings ***
Documentation    Start browser with specifications defined within local config.robot file
...              All test and suite setup keywords are defined here.

Library    SeleniumLibrary
Resource   config.robot

*** Keywords ***
Start Test
    Open Browser    ${BASE_URL}    ${BROWSER}
    Set Window Size    ${SCREEN_WIDTH}    ${SCREEN_HEIGHT}
    Set Selenium Timeout    30 seconds

End Test
    Sleep    2
    Capture Page Screenshot
    Close Browser
