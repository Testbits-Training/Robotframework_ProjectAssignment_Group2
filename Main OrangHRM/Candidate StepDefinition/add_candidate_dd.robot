*** Settings ***
Library           SeleniumLibrary
Resource          ../PageObject/Login.robot
Resource          ../Configuration/Enviroment.robot
Resource          ../PageObject/AddCandi.robot

*** Keyword ***
I login into OrangeHR DD
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    1
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    1
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    1
    click element    xpath=//*[@id="btnLogin"]
    Sleep    1

I navigate to Candidate and click add DD
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    click element    xpath=//*[@id="btnAdd"]

I fill the information DD
    input_text    xpath=//*[@id="addCandidate_firstName"]    ${dd_fname}
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_lastName"]    ${dd_lname}
    Sleep    1
    input_text    xpath=//*[@id="addCandidate_email"]    ${dd_email}
    Sleep    1
    Select From List By Label    xpath=//*[@id="addCandidate_vacancy"]    Senior QA Lead
    Sleep    1
    Choose File    xpath=//*[@id="addCandidate_resume"]    D://Document kerja/testbits/pakwanoranghr/FileUpload//resume_small.pdf
    Sleep    1

I Save the information DD
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2
