package com.TestMain;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.Duration;
import java.util.Properties;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import com.Utils.GlobalWaits;

public class Base {
public static WebDriver driver;
public static Properties prop;

public Base() {
	try {
		prop = new Properties();
		FileInputStream file = new FileInputStream("C:\\TESTNG PROJECT WORKSPACE\\MercuryToursBDD\\src\\main\\java\\"
														+ "com\\Utils\\config.properties");
		prop.load(file);
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public void initialization() {
	String browserName = prop.getProperty("Browser");
	if(browserName.equalsIgnoreCase("Chrome")) {
	System.setProperty(prop.getProperty("ChromeKey"), prop.getProperty("ChromePath"));
	driver = new ChromeDriver();
	}
	else {
		System.err.println("Driver not in Scope, Please use valid WebDriver");
	}
	driver.manage().window().maximize();
	driver.manage().deleteAllCookies();
	driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(GlobalWaits.Implicitly_Wait));
	driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(GlobalWaits.Page_Load_Timeout));
	driver.get(prop.getProperty("Url"));
}

public void tearDown() {
	driver.quit();
}
}
