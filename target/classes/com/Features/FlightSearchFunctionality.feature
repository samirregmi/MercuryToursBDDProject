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

Feature: Flight Search Functionality
 As a user i want to search flight using flight link on a homepage

  Scenario: Positive Flight Search Functionality
    Given user is on homepage
    When user clicks on flights link on the homepage
    Then  User should be landed on flight search pages
    When  user provides a valid informations on required fields
    And Clicks on continue button
    Then User should be see a message No Seats Avaialble
  