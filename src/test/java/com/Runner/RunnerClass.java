package com.Runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = "C:\\TESTNG PROJECT WORKSPACE\\MercuryToursBDD\\src\\main\\java\\com\\Features\\FlightSearchFunctionality.feature",
				glue = "com.Step_Definations",
				monochrome= true ,
				plugin= {"pretty","html:target/ExecutionReport"}
//tags = "@1.0"
//tags = "@Smoke"
//tags = "@GetSnippet"
//tags = "@Regression"
		)		
public class RunnerClass {

}
