*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Click On New Customers Button
    Click Element                      id=new-customer

Verify Add Customer Page Loaded
    Page Should Contain                Add Customer