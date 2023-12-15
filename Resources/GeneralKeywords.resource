*** Settings ***
Resource          ../Configuration/ConfigurationMap.resource

*** Keywords ***
Open Page
    [Documentation]  Belirtilen browserda linki verilen sayfanın açılmasını sağlar.
    [Arguments]    ${page_url}  ${browser}
    Open Browser  ${page_url}  ${browser}   options=add_experimental_option("detach", True)
    Maximize Browser Window

Tıkla
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    Click Element    ${element}

Metin Gir
    [Arguments]    ${element}    ${text}
    Wait Until Element Is Visible    ${element}
    Capture Page Screenshot
    Input Text    ${element}    ${text}

Metin Bul
    [Arguments]    ${expected_validation_text}
    Wait Until Page Contains Element    ${expected_validation_text}

Butona Varsa Tıkla
    [Arguments]  ${expected_button}
    ${passed}=    Run Keyword And Return Status    Wait Until Page Contains Element     ${expected_button}
    Run Keyword If  '${passed}' == 'True'  Click Element    ${expected_button}

Close Page
    [Documentation]  Açılan browser'ın kapanmasını sağlar.
    Close Browser

