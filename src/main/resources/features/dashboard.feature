Feature: Dashboards
#  As a general user I want to have dashboards displayed on the homepage.
  Scenario: Validate all the dashboard names
    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    Then I validate the following icons on the dashboard
      | All topics  |
      | Coding      |
      | Soft skills |
      | Cucumber    |
      | Java        |
      | Selenium    |
      | Jmeter      |
#when the user clicks on each dashboard icon, the user should be directed to the dashboard page
  @Test1
  Scenario: Validate all dashboard pages
    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    Then I click on "All topics" dashboard
    Then I validate I am on "All topics" page
    Then I navigate back
    Then I click on "Coding" dashboard
    Then I validate I am on "Coding" page
    Then I click on "Soft Skills" dashboard
    Then I click on "Cucumber" dashboard
    Then I click on "SQL" dashboard
    Then I click on "Selenium" dashboard
    Then I click on "API" dashboard
    Then I click on "Others" dashboard
    Then I click on "Java" dashboard
    Then I click on "JMeter" dashboard

  Scenario Outline:
    Given I navigate to Interview Prep
    Then I should see the login page
    Then I enter "test@yahoo.com" in the Email input box
    And I enter "testuser123" in the Password input box
    And I click "Login" button
    Then I validate I am on "Interview Prep home" page
    Then I click "<icon>"
    Then I validate I am on "<icon>" page
    Then I click "Enter new question" button
    Then I enter "this is automation run" in "Your question" input
    Then I click "Enter" button
    Then I validate "this is automation run" question displayed
    Then I validate question "What is JAVA?" has datestamp
    Examples:
      | icon     |
      | Coding   |
      | Java     |
      | Selenium |
      | Jmeter   |
