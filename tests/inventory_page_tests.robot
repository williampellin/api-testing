*** Settings ***
Documentation        INVENTORY TESTS
...
...                  Tests for inventory feature are written in this file using Gherkin Syntax.
...                  Specs: <link-to-documentation-or-prototype>

Resource              ../config/runner.robot
Resource              ../step_definitions/login_page_steps.robot
Resource              ../step_definitions/inventory_page_steps.robot
Resource              ../common/common_steps.robot

Test Setup           Run Keywords       Start Test  
Test Teardown        Run Keywords       End Test

*** Test Cases ***
Scenario: Standard user logout
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Successfull outcome when standard credentials are used.
    ...
    ...                Relevant Business Rules:
    ...                - User is redirected to the login page;

    Given Peny logins with default user
    When Peny clicks to open the sidebar menu
    And Peny clicks to logout
    Then Peny should see the login page

Scenario: Closing the sidebar
Scenario: Reading the About section
Scenario: Adding an item to the cart
Scenario: Removing an item from the cart
Scenario: Viewing an empty cart
Scenario: Viewing a cart with items added
Scenario: Rearranging the item display order (Name - A - Z)
Scenario: Rearranging the item display order (Name - Z - A)
Scenario: Rearranging the item display order (Price - Low to High)
Scenario: Rearranging the item display order (Price - High to Low)