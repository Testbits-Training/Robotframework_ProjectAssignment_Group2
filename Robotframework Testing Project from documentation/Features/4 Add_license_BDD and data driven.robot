*** Settings ***
Library           SeleniumLibrary
Resource          ../StepDefinition/add_license.robot

*** Test Cases ***
CISSP
    Certified Information Systems Security Professional (CISSP)

CAP
    Certified Analytics Professional    (CAP)

CSSLP
    Certified Secure Software Lifecycle Professional (CSSLP)

CCSP
    Certified Cloud Security Professional (CCSP)

*** Keywords ***
Add license
    [Arguments]    ${lc_name}
    Given Login into OrangeHR
    When Navigate to License
    When click Add
    And DD fill information ${lc_name}
    Then Save the information
