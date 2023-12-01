*** Settings ***
Library    SeleniumLibrary
Resource    PO/LandingPage.robot
Resource    PO/LoginPage.robot
Resource    PO/AddCustomers.robot
Resource    PO/Customers.robot

*** Keywords ***
Load Home Page
    LandingPage.Load
    LandingPage.Verify Page Loaded

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    LandingPage.Click On "Sign In" Button
    LandingPage.Verify Login Page Loaded
    LoginPage.Input Login Credentials and Sign In    ${Email}    ${Password}
    LoginPage.Verify Customers Page Loaded

Add New Customer
    Customers.Click On New Customers Button
    Customers.Verify Add Customer Page Loaded
    AddCustomers.Add A New Customer
    AddCustomers.Verify Customer Succesfully Added