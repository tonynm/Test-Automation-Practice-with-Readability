*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Add A New Customer
    Input Customer Credentials
    Click "Submit" Button

Input Customer Credentials
    Input Customer Email
    Input Customer Name
    Input Customer City And State
    Input Customer Gender
    Check Promotional List

Input Customer Email
    Input Text                         id=EmailAddress    janedoe@gmail.com

Input Customer Name
    Input Text                         id=FirstName    Jane
    Input Text                         id=LastName    Doe

Input Customer City And State
    Input Text                         id=City    San Diego
    Select From List By Value          id=StateOrRegion    CA

Input Customer Gender
    Select Radio Button                gender    female

Check Promotional List
    Select Checkbox                    name=promos-name

Click "Submit" Button
    Click Button                       Submit

Verify Customer Succesfully Added
    Wait Until Page Contains           Success! New customer added.