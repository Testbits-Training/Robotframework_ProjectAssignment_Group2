*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${VariableName}    Admin

*** Test Cases ***
add candidate
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    ${VariableName}
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_firstName"]    Ali
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_lastName"]    Khalid
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_email"]    alikhalid@kmail.com
    Sleep    1
    Select From List By Label    xpath=//*[@id="addCandidate_vacancy"]    Senior QA Lead
    Sleep    1
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2
    click element    xpath=//a[contains(text(),'Ali Khalid')]//preceding::input[1]
