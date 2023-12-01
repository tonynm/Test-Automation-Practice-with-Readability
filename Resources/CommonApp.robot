*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Log                                Starting the test case!
    Set Selenium Speed    0.5s
    Open Browser    about:blank    ${BROWSER}

End Web Test
    Close All Browsers