*** Settings ***
Documentation        AUTHENTICATION TESTS
...
...                  Tests from Login Feature are written in this file using Gherkin Syntax.
...                  Specs: <link-to-documentation-or-prototype>

Resource              ../config/runner.robot
Resource              ../step_definitions/login_page_steps.robot
Resource              ../step_definitions/inventory_page_steps.robot
Resource              ../common/common_steps.robot

Test Setup           Run Keywords       Start Test  
Test Teardown        Run Keywords       End Test

*** Test Cases ***
Scenario: Standard user logins successfully 
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Successfull outcome when standard credentials are used.
    ...
    ...                Relevant Business Rules:
    ...                - User must be redirected to the inventory page after a sucessfull login

    Given Peny is on the login page
    When Peny inserts their default username
    And Peny inserts their default password
    And Peny clicks the login button
    Then Peny should see the inventory page

Scenario: Attempted login with invalid username
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Outcome when using invalid or inexistent username credentials.
    ...
    ...                Relevant Business Rules:
    ...                - User must be shown a message describing the error.
   
    Given Peny is on the login page
    When Peny inserts their invalid username
    And Peny inserts their default password
    And Peny clicks the login button
    Then Peny should see an invalid data error message

Scenario: Attempted login with invalid password
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Outcome when using invalid password credentials.
    ...
    ...                Relevant Business Rules:
    ...                - User must be shown a message describing the error.
   
    Given Peny is on the login page
    When Peny inserts their default username
    And Peny inserts their invalid password
    And Peny clicks the login button
    Then Peny should see an invalid data error message

Scenario: Attempted login with blank username
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Outcome when leaving the username field blank.
    ...
    ...                Relevant Business Rules:
    ...                - User must be shown a message describing the error.
   
    Given Peny is on the login page
    When Peny inserts their invalid password
    And Peny clicks the login button
    Then Peny should see a blank username error message

Scenario: Attempted login with blank password
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Outcome when leaving the password field blank.
    ...
    ...                Relevant Business Rules:
    ...                - User must be shown a message describing the error.
   
    Given Peny is on the login page
    When Peny inserts their default username
    And Peny clicks the login button
    Then Peny should see a blank password error message

Scenario: Attempted login with locked out user
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Successfull outcome when lockedout credentials are used.
    ...
    ...                Relevant Business Rules:
    ...                - User must be shown a message describing the error.

    Given Peny is on the login page
    When Peny inserts their locked out username
    And Peny inserts their default password
    And Peny clicks the login button
    Then Peny should see a locked out user error message

Scenario: Succesfull login with glitched user
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Successfull outcome when glitched credentials are used.
    ...
    ...                Relevant Business Rules:
    ...                - User is logged in, but the pages don't refresh automatically.

    Given Peny is on the login page
    When Peny inserts their glitched username
    And Peny inserts their default password
    And Peny clicks the login button
    And Peny sees a glitched inventory page
    And Peny refreshes the page
    Then Peny should see the inventory page

Scenario: Attempted login with glitched user
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Successfull outcome when glitched credentials are used.
    ...
    ...                Relevant Business Rules:
    ...                - User is logged in, but the page shown isn't the same as the url.

    Given Peny is on the login page
    When Peny inserts their glitched username
    And Peny inserts their default password
    And Peny clicks the login button
    Then Peny sees a glitched inventory page

Scenario: Succesfull login with problem user
    [Tags]    SMOKE    REGRESSION
    [Documentation]    Successfull outcome when bugged credentials are used.
    ...
    ...                Relevant Business Rules:
    ...                - User is logged in, but the product's images are incorrect.

    Given Peny is on the login page
    When Peny inserts their problem username
    And Peny inserts their default password
    And Peny clicks the login button
    Then Peny should see a bugged inventory page