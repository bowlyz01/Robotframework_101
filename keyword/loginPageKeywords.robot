*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/login.yaml
Resource    ../keyword/commonPageKeywords.robot

*** Keywords ***
user login success futureskill website with ${email} and ${password} 
    commonPageKeywords.Wait until element is ready then click element    xpath=//button[text()="เข้าสู่ระบบ"]
    commonPageKeywords.Wait until element is ready then input element    name=email    ${email}
    commonPageKeywords.Wait until element is ready then input element    name=password    ${password}
    commonPageKeywords.Wait until element is ready then click element    xpath=//button[text()="เข้าสู่ระบบ"]

