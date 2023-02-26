*** Settings ***
Documentation        Common keywords used for a variety of tests
...

Resource            ../page_objects/login_page_objects.robot
Resource            ../page_objects/inventory_page_objects.robot
Resource            ../step_definitions/inventory_page_steps.robot
Resource            ../step_definitions/login_page_steps.robot

*** Keywords ***

Peny logins with ${type} user
    IF    """${type}""" == """default"""
        ${username}=    Set Variable    ${DEFAULT_USERNAME}
    END

    IF    """${type}""" == """locked out"""
        ${username}=    Set Variable    ${LOCKED_USER}
    END

    IF    """${type}""" == """problem"""
        ${username}=    Set Variable    ${PROBLEM_USERNAME}
    END

    IF    """${type}""" == """glitched"""
        ${username}=    Set Variable    ${GLLITCHED_USER}
    END

    IF    """${type}""" == """invalid"""
        ${username}=    Set Variable    ${INVALID_USER}
    END

    Given Peny is on the login page
    When Peny inserts their ${type} username
    And Peny inserts their default password
    And Peny clicks the login button
    Then Peny should see the inventory page