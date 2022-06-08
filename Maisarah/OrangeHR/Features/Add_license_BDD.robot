*** Settings ***
Library           ../../Program Files/Python37/Lib/site-packages/SeleniumLibrary/
Resource          add_license.robot

*** Test Cases ***
Positive_Successfully add new license
    Given Login into OrangeHR
    When Navigate to License and click Add
    And Fill the information
    Then Save the information

Negative_User enter the same license
    Given Login into OrangeHR
    When Navigate to License and click Add
    And Fill the information
    Then Save the information

Negative_user did not enter any license name
    Given Login into OrangeHR
    When Navigate to License and click Add
    And Did not fill information
    Then Error label will appear
