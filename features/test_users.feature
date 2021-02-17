Feature: Test users
  In order to trace tests
  I want to create / edit details

 # @focus
  Scenario: Go to new test user
    When I go to the "test_users" page
    And I click on the "new_test_user" link
    Then I should see the "New Test User" title

  Scenario: Create new test user
    When I go to the "test_users" page
    And I click on the "new_test_user" link
    Then I should see the "New Test User" title
    And I enter the "<guid>" "<email>" "<status>" and "<desc>" into the form

    Examples:
      | guid	 | email       | status       | desc |
      | g-1234 | g1@demo.com | input-test   | na   |
      | g-4321 | g2@demo.com | input test 2 | on   |