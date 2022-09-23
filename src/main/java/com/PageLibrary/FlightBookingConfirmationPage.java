package com.PageLibrary;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.TestMain.Base;

public class FlightBookingConfirmationPage extends Base {
	@FindBy(xpath ="//table[@width = '492']/tbody/tr/td/p")
	WebElement flightFinderResult;
	
	@FindBy(xpath ="//table[@width = '492']/tbody/tr[2]/td//a")
	WebElement backToHomeBtn;
	
	public FlightBookingConfirmationPage() {
		PageFactory.initElements(driver, this);
	}
	public boolean validateFlightFinderResult() {
		return flightFinderResult.isDisplayed();
	}
	
	
	public String returnFlightBookingConformation() {
	return	flightFinderResult.getText();
	}
	public void clickBackToHomeBtn() {
		backToHomeBtn.click();
	}
	public String returnCurrentPageTitle() {
		return driver.getTitle();
	}
	public String returnCurrentUrl() {
		return driver.getCurrentUrl();
	}
}
