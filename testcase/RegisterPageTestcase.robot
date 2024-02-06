*** Settings ***
Library    SeleniumLibrary
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Resource    ../keyword/registerPageKeywords.robot
Suite Setup    Open Browser    ${baseUrl}    gc
Suite Teardown    Close Browser

Test Setup    Maximize Browser Window
Test Teardown     Close Browser

*** Test Cases ***
As user want to success register futureskill
    when user register future skill  ${email}    ${name}    ${lastName}    ${phoneNumber}    ${newPassword}   ${confirmPassword}
    Then future skill should display as "ระบบได้ส่งรหัส OTP"
    

As user want to fail register futureskill with invalid password
    [Setup]    Open Browser    ${baseUrl}    gc
    When user register future skill    ${email}    ${name}    ${lastName}    ${phoneNumber}    ${newPassword}   ${invalidPassword}
    Then future skill should display as "รหัสผ่านไม่ตรงกัน"
    [Teardown]    Close Browser