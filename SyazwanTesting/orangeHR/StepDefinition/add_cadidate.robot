*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObject/Login.robot
Resource          ../Configuration/Enviroment.robot

*** Keyword ***
I login into OrangeHR
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1

I navigate to Candidate and click add
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]

I fill the information
    input_text    xpath=//*[@id="addCandidate_firstName"]    Ali
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_lastName"]    Khalid
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_email"]    alikhalid@kmail.com
    Sleep    1
    Select From List By Label    xpath=//*[@id="addCandidate_vacancy"]    Senior QA Lead
    Sleep    1

I Save the information
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2
