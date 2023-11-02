*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
verify the news item
     Wait Until Page Contains Element    xpath=//button[@id='toggle-button-nav']

Click on menu item
    [Documentation]  Opening menu item
    Click Element    xpath=//button[@id='toggle-button-nav']
    Execute JavaScript    document.querySelector("a[href*='news']").click()
    Sleep    3s
