*** Settings ***
Test Template     Add national keyword
Library           SeleniumLibrary
Resource          ../Add_nationalities_res/Add_nationalities_res.robot

*** Test Cases ***    national
north peru            North peru

south peru            South peru

*** Keywords ***
Add national keyword
    [Arguments]    ${national}
    Given Login into webhrm
    When Navigate to admin
    When Navigate to nationalities
    When Click button add
    And Fill in information dd ${national}
    Then Save information
