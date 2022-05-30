*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
login success
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    3
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    3
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    3
    click element    xpath=//*[@id="btnLogin"]
    Sleep    5
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]/b
    Sleep    3
    click element    xpath=//*[@id="btnAdd"]
    Sleep    3
    Select From List By Label    xpath=//*[@id="systemUser_userType"]    ESS
