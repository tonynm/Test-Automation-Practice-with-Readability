*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Input Valid Sign In Credentials
    [Arguments]    ${Email}    ${Password}
    Input Text                         id=email-id    ${Email}
    Input Text                         id=password    ${Password}

Click On "Submit" Button
    Click Button                       id=submit-id