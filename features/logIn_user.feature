Feature: Login
  
  As a user 
  So that I may add notes to the class
  I need to log in
  
Scenario: As a notes user I want to go to the main page and log in
  Given I am on the home page
  When I click on the "Log In" link
  Then I should be on the "Welcome back" page
  Then I should see "Email"
  Then I should see "Password"