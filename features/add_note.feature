Feature: Add a new note
  
  As a user 
  I want to post a new note
  
Scenario: As user I want to add a note
  Given I am on the home page
  When I click on the "Log In" link
  Then I should be on the "Welcome back" page
  Then I should see "Email"
  Then I should see "Password"
  Then I am logged in
  When I click "My Dashboard"
  Then I should see "Add Note"
  When I click "Add Note"
  Then I should see "Title"
  Then I should see "Course"
  Then I should see "Note"
  
