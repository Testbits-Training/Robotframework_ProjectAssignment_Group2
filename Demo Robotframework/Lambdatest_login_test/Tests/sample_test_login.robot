*** Settings ***
Test Setup        Open test browser
Test Teardown     Close test browser
Resource          ../Resources/Common_login.robot

*** Variables ***

*** Test Cases ***
Login oranghr
    input_text    xpath=//*[@id="txtUsername"]    Admin
    input_text    xpath=//*[@id="txtPassword"]    admin123
    click element    xpath=//*[@id="btnLogin"]

Login fail
    input_text    xpath=//*[@id="txtUsername"]    Admin
    input_text    xpath=//*[@id="txtPassword"]    admin1234
    click element    xpath=//*[@id="btnLogin"]
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]
