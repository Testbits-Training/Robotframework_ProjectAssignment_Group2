*** Settings ***
Test Template     DD_Positive_add_candidate_success_bdd
Library           SeleniumLibrary
Resource          ../StepDefinition/add_candidate_dd.robot

*** Test Cases ***
Abu Khan
    Abu    Khan    abukhan@kmail.com

Siti Chan
    Siti    Chan    sitichan@kmail.com

Aiman Cena
    Aiman    Cena    aimancena@kmail.com

*** Keywords ***
DD_Positive_add_candidate_success_bdd
    [Arguments]    ${dd2_fname}    ${dd2_lname}    ${dd2_email}
    Given I login into OrangeHR DD
    When I navigate to Candidate and click add DD
    And I fill the information DD2
    Then I Save the information DD
