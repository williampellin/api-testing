*** Settings ***
Documentation        LOGIN PAGE OBJECTS
...
...                  File to add css or xpath selectors located in the login page

*** Variables ***
${LOGIN_PAGE_IDENTIFIER}       xpath=//h4[contains(text(), 'usernames are')]
${LOGIN_USERNAME_FIELD}        css=input[data-test="username"]
${LOGIN_PASSWORD_FIELD}        css=input[data-test="password"]
${LOGIN_BUTTON}                css=input[data-test="login-button"]
${USERNAME_ERROR_MESSAGE}      xpath=//h3[contains(text(), 'Epic sadface: Username and password do not match any user in this service')]
${BLANK_USERNAME_MESSAGE}      xpath=//h3[contains(text(), 'Epic sadface: Username is required')]
${BLANK_PASSWORD_MESSAGE}      xpath=//h3[contains(text(), 'Epic sadface: Password is required')]
${LOCKEDOUT_USER_MESSAGE}      xpath=//h3[contains(text(), 'Epic sadface: Sorry, this user has been locked out.')]
