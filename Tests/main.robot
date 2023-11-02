*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close All Browsers
Resource    ../Resources/common.robot
Resource    ../Resources/menu/menu.robot
Resource    ../Resources/menu/news.robot

*** Variables ***

*** Test Cases ***
Open FreeCodeCamp, Sign In, and Open News Page
    [Documentation]    Test for opening FreeCodeCamp, signing in, clicking "News," and opening the news page.
    [Tags]    Test

    #OPening web page
    Begin web test

    #click on the menu
    verify the news item
    Click on menu item
    Click on news item of menu

    # Use JavaScript to click the 'News' link.
    

    # Continue with your test steps on the news page.

    [Teardown]    Close Browser


*** Keywords ***