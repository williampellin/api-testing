*** Settings ***
Documentation        AUTHENTICATION TESTS
...
...                  Tests from Login Feature are written in this file using Gherkin Syntax.
...                  Specs: <link-to-documentation-or-prototype>

Resource              ../config/runner.robot
Resource              ../step_definitions/login_page_steps.robot
Resource              ../step_definitions/inventory_page_steps.robot

Test Setup           Run Keywords       Start Test  
Test Teardown        Run Keywords       End Test

*** Test Cases ***
Scenario: Standard user logins successfully 
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Successfull outcome when standard credentials are used.
    ...
    ...                Relevant Business Rules:
    ...                - User must be redirected to the inventory page after a sucessfull login
    ...            
    ...                Bugs: <link-to-issue-tracker>

    Given Peny is on the login page
    When Peny inserts their default username
    And Peny inserts their default password
    And Peny clicks the login button
    Then Peny should see the inventory page
