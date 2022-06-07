*** Settings ***
Library           SeleniumLibrary
Resource          ../StepDefinition/delete_candidate.robot
Resource          ../StepDefinition/add_cadidate.robot
Resource          ../PageObject/DeleteCandi.robot

*** Test Cases ***
positive_success_delete
    Given I login into OrangeHR
    When I navigate to Candidate
    And I find candidate and click delete
    Then I get successful delete
