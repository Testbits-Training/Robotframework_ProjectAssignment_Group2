*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${fname}          Ali
${lname}          Khalid
${email}          alikhalid@kmail.com

*** Test Cases ***
login
    Login_Keyword

add candidate
    Login_Keyword
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
    Choose File    xpath=//*[@id="addCandidate_resume"]    D://kerja/pakwanoranghr/FileUpload/resume_small.pdf
    Sleep    1
    click element    xpath=//*[@id="btnSave"]
    Sleep    3
    click element    xpath=//*[@id="btnBack"]
    Sleep    2
    click element    xpath=//a[contains(text(),'Ali Khalid')]//preceding::input[1]

delete
    Login_Keyword
    Sleep    1
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1
    input text    xpath=//*[@id="candidateSearch_candidateName"]    Ali Khalid
    Sleep    1
    click element    xpath=//*[@id="btnSrch"]
    Sleep    1
    Select Checkbox    xpath=//*[@id="ohrmList_chkSelectRecord_23_6"]
    click element    xpath=//*[@id="btnDelete"]
    click element    xpath=//*[@id="dialogDeleteBtn"]
    element text should be    xpath=//*[@id="frmList_ohrmListComponent"]/script

*** Keywords ***
Login_Keyword
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    Sleep    3
    input_text    xpath=//*[@id="txtUsername"]    Admin
    Sleep    3
    input_text    xpath=//*[@id="txtPassword"]    admin123
    Sleep    3
    click element    xpath=//*[@id="btnLogin"]
    Sleep    5
