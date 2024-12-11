package com.sconto.pages;

import com.codeborne.selenide.Selenide;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import static com.codeborne.selenide.Selenide.$;

public class HomePage {

    @FindBy(css = "[data-accept-action='all']")
    WebElement acceptAll;

    public HomePage acceptCookies() {
        if ($(acceptAll).exists()){
            $(acceptAll).click();
        }
        return Selenide.page(this);
    }

    @FindBy(css = ".headerElement--login")
    WebElement loginIcon;

    public LoginPage clickOnLoginIcon() {
        $(loginIcon).click();
        return Selenide.page(LoginPage.class);
    }
}
