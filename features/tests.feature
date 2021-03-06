@javascript
Feature: Test web interface
  Scenario: The test is valid
    Given I visit the website
    Then page should have content "New Question"
    And page should have content "Listing questions"
    When I click on "New Question"
    Then page should have content "New question"
    Then page should have content "Statement"
    Then page should have content "Answer1"
    Then page should have content "Answer2"
    Then page should have content "Answer3"
    Then page should have content "Correct answer"
    Then page should have content "Domain"
    Then page should have content "Back"
    When I fill in "Statement" with "First question ?"
    And I fill in "Answer1" with "1 da"
    And I fill in "Answer2" with "2 nu"
    And I fill in "Answer3" with "3 nu stiu"
    And I fill in "Correct answer" with "1"
    And I fill in "Domain" with "Test"
    When I click on "Create Question"
    Then page should have content "Question was successfully created."

  Scenario: The test is invalid
    Given I visit the website
    Then page should have content "New Question"
    And page should have content "Listing questions"
    When I click on "New Question"
    Then page should have content "New question"
    Then page should have content "Statement"
    Then page should have content "Answer1"
    Then page should have content "Answer2"
    Then page should have content "Answer3"
    Then page should have content "Correct answer"
    Then page should have content "Domain"
    Then page should have content "Back"
    When I fill in "Statement" with "second question ?"
    And I fill in "Answer1" with "da"
    And I fill in "Answer2" with "2 nu"
    And I fill in "Answer3" with "3 nu stiu"
    And I fill in "Correct answer" with "1"
    And I fill in "Domain" with "test"
    When I click on "Create Question"
    Then page should have content "Please review the problems below:"
