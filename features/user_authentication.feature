Feature: As a User, In order to use the app, I would like to be able to login


  Scenario: Existing User Logs In
    Given I have an existing user account
    When I visit "/sign_in"
    And I fill in "Email" with "user@example.com"
    And I fill in "Password" with "password"
    And I press "Submit"
<<<<<<< HEAD
    Then I should see "Search"
=======
    Then I should see "Create Note"
>>>>>>> 48d5044832a2a3cb503949da05757fc3679f1ef3

  Scenario: User Without an Account Signs Up
