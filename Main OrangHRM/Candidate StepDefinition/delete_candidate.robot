*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
I find candidate and click delete
    input text    xpath=//*[@id="candidateSearch_candidateName"]    Ali Khalid
    Sleep    1
    click element    xpath=//*[@id="btnSrch"]
    Sleep    1
    Select Checkbox    xpath=//*[@id="ohrmList_chkSelectRecord_23_6"]
    click element    xpath=//*[@id="btnDelete"]
    click element    xpath=//*[@id="dialogDeleteBtn"]

I navigate to Candidate
    click element    xpath=//*[@id="menu_recruitment_viewRecruitmentModule"]/b
    Sleep    1

I get successful delete
    element text should be    xpath=//*[@id="frmList_ohrmListComponent"]/script
