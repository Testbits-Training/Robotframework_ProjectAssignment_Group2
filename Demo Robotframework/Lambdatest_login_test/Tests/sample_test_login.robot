*** Settings ***

Resource  ../Resources/Common_login.robot

Test Setup  Open test browser
Test Teardown  Close test browser
 
*** Variables ***

*** Test Cases ***

Login and remote lambda
	[Timeout]   ${TIMEOUT}
	input_text    xpath=//*[@id="txtUsername"]    Admin
    input_text    xpath=//*[@id="txtPassword"]    admin123
    click element    xpath=//*[@id="btnLogin"]
