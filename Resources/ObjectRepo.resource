*** Variables ***
${browser}               chrome
${page_url}              https://www.petzzshop.com/
${daha_sonra_button}     //*[@id="setrow-push-popup-cancel-button"]
${uye_girisi_button}     //*[@id="divMemberWelcomeContent"]
${uye_girisi_tittle}     //*[@class="spanTittle hideMobile" and text()="Üye Girişi"]
${e_mail_textbox}        //*[@id="txtUyeGirisEmail"]
${e_mail}                test@otomasyon.tr
${sifre_textbox}         //*[@id="txtUyeGirisPassword"]
${sifre}                 123456
${giris_yap_button}      //*[text()="Giriş Yap"]
${hesabım_button}        //*[@class="headerHesabim"]
${merhaba_hesabım_text}  //*[@class="hesabimAnasayfaBaslik"]//h2