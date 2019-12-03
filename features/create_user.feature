Feature: Create a new user
  
  As a user 
  So that I may add notes to the class
  I need to sign up
  
Scenario: As a notes user I want to go to the main page and create an account
  Given I am on the home page
  When I click on the "Sign Up!" link
  Then I should be on the "Lets get started" page
  Then I should see "Name"
  Then I should see "Email"
  Then I should see "Password"
  Then I should see "Password confirmation"
  
