*** Settings ***
Library           ../../Program Files/Python37/Lib/site-packages/SeleniumLibrary/

*** Keyword ***
Login into OrangeHR
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1

Navigate to License and click Add
    click element    xpath=//*[@id="menu_admin_viewAdminModule"]/b
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Qualifications"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_viewLicenses"]
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]

Fill the information
    input_text    xpath=//*[@id="license_name"]    Certified Information Systems Security Professional (CISSP)
    Sleep    1

Save the information
    click element    xpath=//*[@id="btnSave"]
    Sleep    3

Did not fill information
    Sleep    2

Error save license appear
    element text should be    xpath//*[@id="recordsListDiv"]/div[2]/script    Name Already Exists

Error label will appear
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    element text should be    xpath=//*[@id="frmSave"]/fieldset/ol/li[1]/span    Required
