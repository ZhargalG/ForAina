Feature: Manage Access

  Scenario: Validate new user form
    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "admin@yahoo.com" in the Email input box
    And I enter "adminuser123" in the Password input box
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    And I click "Manage Access" link
    Then I validate the following "input" fields
      | First Name |
      | Last Name  |
      | E-mail     |
    Then I validate the following "dropdown" fields
      | Role  |
      | Batch |
    Then I validate the following options are displayed in "Role" dropdown
      | Student    |
      | Instructor |
      | Mentor     |
    Then I validate the following options are displayed in "Batch" dropdown
      | N/A |
      | 1   |
      | 2   |
      | 3   |
      | 4   |
      | 5   |
      | 6   |
      | 7   |
      | 8   |
      | 9   |
      | 10  |

  Scenario: Practice Map Entry
    Then I pick the key of "Student"
      | First Name | John                 |
      | Last Name  | Smith                |
      | Email      | john.smith@gmail.com |
      | Role       | Student              |
      | Batch      | 4                    |

  @createuser
  Scenario: create a new user
    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "admin@yahoo.com" in the Email input box
    And I enter "adminuser123" in the Password input box
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    And I click "Manage Access" link
    Then I enter the following values in the following fields
      | First Name | John                 |
      | Last Name  | Smith                |
      | Email      | john.smith@gmail.com |
      | Role       | Student              |
      | Batch      | 4                    |
    And I click "Add User" button
    Then verify the following user exists in the table
      | First Name | John                 |
      | Last Name  | Smith                |
      | Email      | john.smith@gmail.com |
      | Role       | Student              |
      | Batch      | 4                    |
    And I click "Action" button
    And I click "Edit" button
    Then I edit the user with following
      | Email | john.new@gmail.com |
      | Role  | Mentor             |
      | Batch | N/A                |
    Then I click "Update User" button
    Then verify the following user exists in the table
      | First Name | John               |
      | Last Name  | Smith              |
      | Email      | john.new@gmail.com |
      | Role       | Mentor             |
      | Batch      | N/A                |

   #homework below + under
#    Then I enter the following values in the following fields
#      | First Name  | John                 |
#      | Last Name   | Smith                |
#      | Email       | john.smith@gmail.com |
#      | Role        | Instructor             |
#      | Batch       | 4                    |
#    And I click "Add User" button
#    Then verify the following user exists in the table
#      | First Name  | John                 |
#      | Last Name   | Smith                |
#      | Email       | john.smith@gmail.com |
#      | Role        | Student              |
#      | Batch       | 4                    |

  Scenario Outline: Admin user adds <role>
    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "admin@yahoo.com" in the Email input box
    And I enter "adminuser123" in the Password input box
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    And I click "Manage Access" button
    Then I enter "<firstname>" in the firstname input
    Then I enter "<lastname>" in the lastname input
    Then I enter "<email>" in the email input
    Then I enter "<role>" in the role input
    Then I enter "<batch>" in the batch input
    Then I click "Add user" button
    Then verify the following user exists in the table


    Examples:
      | firstname | lastname | email        | role       | batch
      | John      | Smith    | js@yahoo.com | Instructor | N/A   |
      | John      | Smith    | js@yahoo.com | Student    | 1     |
      | John      | Smith    | js@yahoo.com | Menter     | N/A   |