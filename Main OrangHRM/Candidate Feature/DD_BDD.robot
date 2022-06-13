*** Settings ***
Test Template     DD_Positive_add_candidate_success_bdd
Library           SeleniumLibrary
Resource          ../StepDefinition/add_candidate.robot

*** Test Cases ***
Abu Khan
    Abu    Khan    abukhan@kmail.com

Siti Chan
    Siti    Chan    sitichan@kmail.com

Aiman Cena
    Aiman    Cena    aimancena@kmail.com

*** Keywords ***
DD_Positive_add_candidate_success_bdd
    [Arguments]    ${dd_fname}    ${dd_lname}    ${dd_email}
    Given I login into OrangeHR
    When I navigate to Candidate and click add
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
    Then I Save the information
