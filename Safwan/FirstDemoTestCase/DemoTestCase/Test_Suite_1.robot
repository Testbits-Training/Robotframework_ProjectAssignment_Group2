*** Settings ***
Library           SeleniumLibrary

*** Variable ***
${number} 100     ${EMPTY}

*** Test Cases ***
TC1
    Open Browser    https://www.tutorialspoint.com/    chrome
    Maximize Browser Windows
    Close browser

TC2
    [Tags]    TC2
    ${a}    Set Variable    Hi
    Log    ${a}
    ${b}    Set Variable If    ${-1}>0    yes    no
    Log    ${b}
