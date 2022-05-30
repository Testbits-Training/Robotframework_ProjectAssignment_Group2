*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
test1
    open browser    http://automationpractice.com/index.php    chrome
    click element    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
    input_text    xpath=//*[@id="email"]    admin123@kmail.com
    input_text    xpath=//*[@id="passwd"]    password123
    click element    xpath=//*[@id="SubmitLogin"]/span
