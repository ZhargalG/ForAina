Feature: Interview Section
  Background:
    Given I navigate to Interview Prep
#    When I open Interview Section page
  Scenario: Validate adding a new Do statement will display in Do section
    When I enter "Talk clear" in "Do" input field
    And I click "Enter Do" button
    Then I validate "Talk clear" is displayed in "Do" section
  Scenario: Validate adding a new Dont statement will display in Dont section
    When I enter "Dont chew a gum" in "Dont" input field
    And I click "Enter Dont" button
    Then I validate "Dont chew a gum" is displayed in "Dont" section
  @Test3
  Scenario: Add do statement tests
    Then I enter "admin@yahoo.com" in the Email input box
    And I enter "adminuser123" in the Password input box
    And I click "Login" button
    When I enter "Talk clear" in "Do" input field
    And I click "Enter Do" button
    Then I validate "Talk clear" is displayed in "Do" section
  @Test4
  Scenario: Test Do functionality deleted
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    When I enter "Talk clear" in "Do" input field
    And I click "Enter Do" button
    Then I click "Delete" button
    Then I validate "Talk clear" is deleted
    @Test5
    Scenario: Test Do functionality editing
      Then I enter "test@yahoo.com" in the Email input box
      And I enter "testuser123" in the Password input box
      And I click "Login" button
      When I enter "Talk clear" in "Do" input field
      And I click "Enter Do" button
      Then I click "Edit" button
      Then I enter "Talk confident" in "Do" input field
      Then I validate "Talk confident" is displayed in "Do" section