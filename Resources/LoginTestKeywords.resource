*** Settings ***
Resource          ../Configuration/ConfigurationMap.resource

*** Keywords ***

Email Girilir
    Metin Gir   ${e_mail_textbox}  ${e_mail}

Şifre Girilir
    Metin Gir    ${sifre_textbox}  ${sifre}

Giris Yap Button
    Tıkla   ${giris_yap_button}

Login Check
    Metin Bul  ${hesabım_button}
    Tıkla      ${hesabım_button}
    Metin Bul  ${merhaba_hesabım_text}
    ${status}    Run Keyword And Return Status    Element Should Contain    ${merhaba_hesabım_text}  MERHABA test otomasyon
    Run Keyword If    '${status}'=='True'    Log    Giriş Başarılı
    ...    ELSE    Fail    Giriş Başarısız!

Login
    Open Page    ${page_url}    ${browser}
    Butona Varsa Tıkla  ${daha_sonra_button}
    Tıkla    ${uye_girisi_button}
    Metin Bul   ${uye_girisi_tittle}
    Email Girilir
    Şifre Girilir
    Giris Yap Button
    Login Check