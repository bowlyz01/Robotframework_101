*** Settings ***
Library    SeleniumLibrary
Resource    ../keyword/commonPageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml

*** Keywords ***
user register future skill
    [Arguments]    ${email}    ${name}    ${lastName}    ${phoneNumber}    ${newPassword}   ${confirmPassword}
    commonPageKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    commonPageKeywords.Wait until element is ready then input element    name=email    ${email}
    commonPageKeywords.Wait until element is ready then input element    name=firstName    ${name}
    commonPageKeywords.Wait until element is ready then input element    name=lastName    ${lastName}
    commonPageKeywords.Wait until element is ready then input element    name=phoneNumber    ${phoneNumber}
    commonPageKeywords.Wait until element is ready then input element    name=newPassword    ${newPassword}
    commonPageKeywords.Wait until element is ready then input element    name=confirmPassword    ${confirmPassword}
    Select Checkbox    name=consent
    commonPageKeywords.Wait until element is ready then click element    xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display as "${expected_text}"
    commonPageKeywords.Wait until page contains element then verify element    ${expected_text}
future skill should display form to register as ${expected_text}
    commonPageKeywords.Wait until page contains element then verify element    ${expected_text}

