*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/config/config.yaml
Resource    ../keyword/commonPageKeywords.robot

*** Keywords ***
futureskill should display home page and display message as ${expected_text}
    commonPageKeywords.Wait until page contains element then verify element    ${expected_text}
