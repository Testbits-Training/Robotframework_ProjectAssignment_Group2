*** Settings ***
Library           SeleniumLibrary
Resource          ../StepDefinition/add_cadidate.robot

*** Test Cases ***
add_can_bdd
    Given I login into OrangeHR
    When I navigate to Candidate and click add
    And I fill the information
    Then I Save the information
