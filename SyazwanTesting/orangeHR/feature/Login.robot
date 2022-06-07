*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
add user
    open browser    https://opensource-demo.orangehrmlive.com/    firefox
    Sleep    3
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    3
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    3
    click element    xpath=//*[@id="btnLogin"]
    Sleep    5
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]/b
