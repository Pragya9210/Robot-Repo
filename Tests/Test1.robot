*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
This is SauceLab URL test case
    [Documentation]    URL test
    [Tags]    Functional
    Open Browser    https://www.saucedemo.com/  Chrome
    Close Browser
