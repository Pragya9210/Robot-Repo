*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.saucedemo.com/

*** Keywords ***

*** Test Cases ***
This is SauceLab URL test case
    [Documentation]    URL test
    [Tags]    Functional
    Open Browser    https://www.saucedemo.com/  Chrome
    Title Should Be    Swag Labs

This is SauceLab Invalid username test case
    [Documentation]    Invalid Username Login test
    [Tags]    Functional TC2
    #Open Browser    https://www.saucedemo.com/  Chrome
    Input Text    //*[@id="user-name"]  Pragya
    Input Text    //*[@id="password"]  secret_sauce
    Click Button    //*[@id="login-button"]
    Sleep    3s
    Element Text Should Be  css=.error-message-container  Epic sadface: Username and password do not match any user in this service
    Sleep    3s
    Close Browser
