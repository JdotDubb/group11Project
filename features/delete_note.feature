Feature: Delete a note
  
  As a user 
  I want to delete a note
  
Scenario: As user I want to delete a note
  Given I am on the home page
  When I click on the "Log In" link
  Then I should be on the "Welcome back" page
  Then I should see "Email"
  Then I should see "Password"
  Then I am logged in
  When I click "My Dashboard"
  Then I should see "Delete"
  When I click "Delete"
  Then I should see "Sure you want to toss it?"
  