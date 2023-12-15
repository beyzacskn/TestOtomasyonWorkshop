*** Settings ***
Resource          ../Configuration/ConfigurationMap.resource

Test Setup     Open Page    ${page_url}    ${browser}
Test Teardown  Close Page

*** Test Cases ***
Workshop Test1
    Butona Varsa Tıkla  ${daha_sonra_button}
    Tıkla               ${uye_girisi_button}
    Metin Bul           ${uye_girisi_tittle}
    Metin Gir           ${e_mail_textbox}  ${e_mail}
    Metin Gir           ${sifre_textbox}   ${sifre}
    Tıkla               ${giris_yap_button}
    Metin Bul           ${hesabım_button}
    Tıkla               ${hesabım_button}
    Metin Bul           ${merhaba_hesabım_text}
    ${status}    Run Keyword And Return Status    Element Should Contain    ${merhaba_hesabım_text}  MERHABA test otomasyon
    Run Keyword If    '${status}'=='True'    Log    Giriş Başarılı
    ...    ELSE    Fail    Giriş Başarısız!
