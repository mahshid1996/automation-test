*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close All Browsers

*** Variables ***

*** Test Cases ***
Open FreeCodeCamp, Sign In, and Open News Page
    [Documentation]    Test for opening FreeCodeCamp, signing in, clicking "News," and opening the news page.
    [Tags]    Test

    Open Browser    https://www.freecodecamp.org/    chrome
    Maximize Browser Window

    Wait Until Page Contains Element    xpath=//button[@id='toggle-button-nav']

    Click Element    xpath=//button[@id='toggle-button-nav']

    # Wait for the menu to expand and load.
    Sleep    5s


    # Use JavaScript to click the 'News' link.
    Execute JavaScript    document.querySelector("a[href*='news']").click()

    # Continue with your test steps on the news page.

    [Teardown]    Close Browser


*** Keywords ***