*** Settings ***
Documentation    This will hold the keywords that are used to load the landing page for the CRM website
Library    SeleniumLibrary

*** Keywords ***
Load
    Go To                                       ${START_URL}

Verify Page Loaded
    Wait Until Page Contains                    Customers Are Priority One!

Click On "Sign In" Button
    Click Link                                  login.html

Verify Login Page Loaded
    Wait Until Page Contains                    Login