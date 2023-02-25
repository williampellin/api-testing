*** Settings ***
Documentation    This is supposed to be equivalent to a .env file. 
...              In a real project, DO NOT upload this to the remote repository.
...              Alternatively, you should upload a 'config.example.robot' file containing only variable names. 

*** Variables ***
${BROWSER}             chrome
${SCREEN_WIDTH}        1920
${SCREEN_HEIGHT}       1080
${BASE_URL}            https://www.saucedemo.com/
${DEFAULT_USERNAME}    standard_user
${DEFAULT_PASSWORD}    secret_sauce
${LOCKED_USER}         locked_out_user