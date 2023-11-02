*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Begin web test
    Open Browser    https://www.freecodecamp.org/    chrome
    Maximize Browser Window
    Sleep    5s


Changing size of browser
  Set Window Position   x=100   y=200
  Set Window Size     width=800   height=600

End test case
    Close Browser