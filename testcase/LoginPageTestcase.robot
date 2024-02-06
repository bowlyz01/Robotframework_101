*** Settings ***
Library    SeleniumLibrary

Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/login.yaml
Resource    ../keyword/commonPageKeywords.robot
Resource    ../keyword/loginPageKeywords.robot
Resource    ../keyword/homePageKeywords.robot
Suite Setup    Open Browser    ${baseUrl}    gc
Suite Teardown    Close Browser

Test Setup        Maximize Browser Window

*** Test Cases ***
As user want to login futureskill
    when user login success futureskill website with ${email} and ${password} 
    Then futureskill should display home page and display message as เรียนต่อ

