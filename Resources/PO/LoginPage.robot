*** Settings ***
Library    SeleniumLibrary
Resource    SignIn.robot

*** Keywords ***
Input Login Credentials and Sign In
    [Arguments]    ${Login_Email}    ${Login_Password}
    SignIn.Input Valid Sign In Credentials    ${Login_Email}    ${Login_Password}
    SignIn.Click On "Submit" Button

Verify Customers Page Loaded
    Wait Until Page Contains           Our Happy Customers