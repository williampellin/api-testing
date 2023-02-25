*** Settings ***
Documentation        LOGIN PAGE OBJECTS
...
...                  File to add css or xpath selectors located in the login page

*** Variables ***
${LOGIN_PAGE_IDENTIFIER}       xpath=//h4[contains(text(), 'usernames are')]
${LOGIN_USERNAME_FIELD}        css=input[data-test="username"]
${LOGIN_PASSWORD_FIELD}        css=input[data-test="password"]
${LOGIN_BUTTON}                css=input[data-test="login-button"]