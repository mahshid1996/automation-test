*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Click on news item of menu
    [Documentation]  Opening news item
    #Click Element    xpath=//*[@id="universal-nav"]/div/ul[2]/li[6]/a/span[1]
    #Page Should Contain Element    xpath= //*[@id="site-main"]/div/section/article[2]/a/img
    Execute JavaScript    document.querySelector("a[href*='news']").click()