# *** Settings ***
# Library    SeleniumLibrary

# *** Variables ***
# ${URL}       https://the-internet.herokuapp.com/login
# ${BROWSER}   chrome

# *** Test Cases ***
# Verify Login Functionality
#     Open Browser    ${URL}    ${BROWSER}
#     Input Text    id=username    tomsmith
#     Input Text    id=password    SuperSecretPassword!
#     Click Button    xpath=//button[@type='submit']
#     Wait Until Page Contains    Secure Area
#     Capture Page Screenshot
#     Close Browser


# *** Settings ***
# Library    SeleniumLibrary

# *** Variables ***
# ${URL}       https://the-internet.herokuapp.com/login
# ${BROWSER}   chrome

# *** Test Cases ***
# Verify Login Functionality
#     Open Browser    ${URL}    ${BROWSER}
#     Login To Application
#     Wait Until Page Contains    Secure Area
#     Capture Page Screenshot
#     Close Browser

# *** Keywords ***
# Login To Application
#     Input Text    id=username    tomsmith
#     Input Text    id=password    SuperSecretPassword!
#     Click Button    xpath=//button[@type='submit']



*** Settings ***
Library    SeleniumLibrary
Test Setup  Open Application 
Test Teardown  Close Browser

*** Variables ***
${URL}       https://the-internet.herokuapp.com/login
${BROWSER}   chrome

*** Test Cases ***
Verify Login Functionality
    
    Login To Application
    Wait Until Page Contains    Secure Area
    Capture Page Screenshot
   

*** Keywords ***
Open Application 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login To Application
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    xpath=//button[@type='submit']