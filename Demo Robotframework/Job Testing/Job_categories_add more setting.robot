*** Setting ***
Test Setup        Login webpage
Test Teardown     close browser
Library           SeleniumLibrary

*** Variables ***
${txt_username}    Admin
${txt_password}    admin123
${Browser}        chrome
${Job}            Electrical Engineering

*** Test Cases ***
add job categories
    Sleep    1
    click element    xpath= //*[@id="menu_admin_viewAdminModule"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_Job"]
    Sleep    1
    click element    xpath=//*[@id="menu_admin_jobCategory"]
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]
    Sleep    1
    Sleep    1
    add job ${Job}
    Sleep    2

*** Keywords ***
Login webpage
    open browser    https://opensource-demo.orangehrmlive.com/    ${Browser}
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    ${txt_username}
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    ${txt_password}
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1

add job ${add_job}
    input_text    xpath=//*[@id="jobCategory_name"]    ${add_job}
    Sleep    2
    click element    xpath=//*[@id="btnSave"]

ad job 2
    [Arguments]    ${addjob}
