#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#@RegrestionTest
Feature: Login Functionality
 Registered user should be able to login after providing valid credentials

	@SmokeTest
  Scenario Outline: Negative login functionality with blank username and some password
    Given a user is in home page
    When user enters a blank  "<Username>" 
    And enters some randon  "<Password>"
   	And  Clicks submit button 
   	Then user should be not be able to login
		And see login error message.
    Examples: 
      | Username  | Password |
      |						|     t12	 | 
      |						|     d12	 | 
      
  @SmokeTest
  Scenario Outline: Negative login functionality with blank username and blank password
    Given a user is in home page
    When  user enters a blank "<Username>" 
    And enters a blank password "<Password>"
   	And  Clicks submit button 
   	Then user should be not be able to login
		And see login error message.
    Examples: 
      | Username  | Password 	|
      |						|     	 		| 
      |						|      			| 
     
  @SmokeTest
  Scenario Outline: Positive login functionality with valid username and valid  password
    Given a user is in home page
    When user enters a valid "<Username>" 
    And enters valid "<Password>"
  	And  Clicks submit button 
   	Then user should be able to login 
   	And Land on Login Page With Login  Successful Message
    Examples: 
      | Username  						| Password 		|
      |david1965@yahoo.com		|   davidus	 	| 
      |peter123@yahoo.com			|   peterD 		| 
      |ram123@yahoo.com				|  	ramu123	 	|
      
  @SmokeTest
  Scenario Outline: Positive login functionality with valid username and valid  password from SignOn Page
    Given a user is in home page
    When user enters a valid "<Username>" 
    And enters valid "<Password>"
  	And  Clicks submit button 
   	Then user should be able to login 
   	And Land on Login Page With Login  Successful Message
    Examples: 
      | Username  						| Password 		|
      |david1965@yahoo.com		|   davidus	 	| 
      |peter123@yahoo.com			|   peterD 		| 
      |ram123@yahoo.com				|  	ramu123	 	|
      
  @SmokeTest
  Scenario Outline: Negative login functionality test with valid username and invalid  password
    Given a user is in home page
    When user enters a valid "<Username>" 
   	And enters invalid "<Password>"
   	And  Clicks submit button 
   	Then user should be not be able to login
		And see login error message.
    Examples: 
      | Username  						| Password 		|
      |david1965@yahoo.com		|   dv123	 		| 
      |peter123@yahoo.com			|   ptr111		| 
      |ram123@yahoo.com				|  	rambo111 	|
      
  @SmokeTest
  Scenario Outline: Negative login functionality with Invalid username and valid  password
    Given a user is in home page
    When user enters a invalid "<Username>" 
   	And enters valid "<Password>"
   	And  Clicks submit button 
   	Then user should be not be able to login
		And see login error message.
    Examples: 
      | Username  						| Password 		|
      |david1965@cyahoo.com		|   davidus	 	| 
      |peter123&yahoo.com			|   peterD 		| 
      |ram123$yahoo.com				|  	ramu123	 	|
      
  @SmokeTest
  Scenario Outline: Negative login functionality with Invalid username and Invalid  password
    Given a user is in home page
    When user enters a invalid "<Username>" 
   	And enters invalid "<Password>"
   	And  Clicks submit button 
   	Then user should be not be able to login
		And see login error message.
    Examples: 
      | Username  						| Password 		|
      |david1965@cyahoo.com		|  davidus @&	| 
      |peter123&yahoo.com			|  peterD re 	| 
      |ram123$yahoo.com				|  ramu12 3kfx|
      
      
