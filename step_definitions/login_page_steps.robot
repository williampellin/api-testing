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