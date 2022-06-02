*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObject/Login.robot
Resource          ../Configuration/Enviroment.robot
Resource          ../PageObject/AddCandi.robot

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
    Choose File    xpath=//*[@id="addCandidate_resume"]    C://Users/syazw/Documents/GitHub/resume small.pdf
    Sleep    1

I Save the information
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2

I fill the information with wrong email format
    input_text    xpath=//*[@id="addCandidate_firstName"]    Ali
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_lastName"]    Khalid
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_email"]    alikhalid
    Sleep    1
    Select From List By Label    xpath=//*[@id="addCandidate_vacancy"]    Senior QA Lead
    Sleep    1
    Choose File    xpath=//*[@id="addCandidate_resume"]    C://Users/syazw/Documents/GitHub/resume small.pdf
    Sleep    1

I got email error
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    element text should be     xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[2]/span    Expected format: admin@example.com

I got required error if fill blank
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    element text should be     xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[1]/ol/li[1]/span    Required
    element text should be    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[1]/ol/li[3]/span    Required
    element text should be    xpath=//*[@id="frmAddCandidate"]/fieldset/ol[1]/li[2]/span    Required

I do not fill information
    Sleep    2
