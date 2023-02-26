*** Settings ***
Documentation        LOGIN PAGE STEPS
...
...                  All steps from Login Page should be written here.
...                  Specs: <link-to-doc-reference>

Resource            ../page_objects/login_page_objects.robot
Resource            ../config/config.robot
Library             SeleniumLibrary

*** Keywords ***
Peny is on the login page
    Wait Until Element Is Visible    ${LOGIN_PAGE_IDENTIFIER}
    ${current_url}=    Get Location
    Should Be Equal As Strings    ${current_url}    ${BASE_URL}

Peny inserts their ${type} username
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

    Input Text    ${LOGIN_USERNAME_FIELD}    ${username}

Peny inserts their ${type} password
    IF    """${type}""" == """default"""
        ${password}=    Set Variable    ${DEFAULT_PASSWORD}
    END

    IF    """${type}""" == """invalid"""
        ${password}=    Set Variable    iminvalid:(
    END

    Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}

Peny clicks the login button
    Click Button    ${LOGIN_BUTTON}

Peny should see an invalid data error message
    Wait Until Element Is Visible    ${USERNAME_ERROR_MESSAGE}
    ${current_url}=    Get Location
    Should Be Equal As Strings    ${current_url}    ${BASE_URL}

Peny should see a blank username error message
    Wait Until Element Is Visible    ${BLANK_USERNAME_MESSAGE}
    ${current_url}=    Get Location
    Should Be Equal As Strings    ${current_url}    ${BASE_URL}

Peny should see a blank password error message
    Wait Until Element Is Visible    ${BLANK_PASSWORD_MESSAGE}
    ${current_url}=    Get Location
    Should Be Equal As Strings    ${current_url}    ${BASE_URL}