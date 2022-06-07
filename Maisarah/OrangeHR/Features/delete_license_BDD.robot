*** Settings ***
Library           ../../Program Files/Python37/Lib/site-packages/SeleniumLibrary/
Resource          delete_license.robot

*** Test Cases ***
Positive_Successfully delete a license
    Given Login into OrangeHR
    When Navigate to License
    And Select checkbox
    Then Click Delete

Positive_Successfully delete more than one license
    Given Login into OrangeHR
    When Navigate to License
    And Select more than one checkbox
    Then Click Delete
