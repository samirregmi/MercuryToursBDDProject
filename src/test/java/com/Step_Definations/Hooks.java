package com.Step_Definations;

import com.TestMain.Base;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks extends Base{
@Before
public void loadBrowser() {
	initialization();	
}
@After
public void closeBrowser() {
	tearDown();
}
}
