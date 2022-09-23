package com.PageLibrary;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.TestMain.Base;

public class RegistrationErrrPage extends Base {
@FindBy(xpath = "//input[@name = 'confirmPassword']/following-sibling::span")
WebElement passwordMisMatch;

@FindBy(xpath  = "//table[@width = '492']/tbody/tr/td/img[@width = '492']")
WebElement RegisterHeader;

public RegistrationErrrPage() {
	PageFactory.initElements(driver, this);
}
	public boolean displayPasswordMisMatchText() {
		return passwordMisMatch.isDisplayed();
	}
}

