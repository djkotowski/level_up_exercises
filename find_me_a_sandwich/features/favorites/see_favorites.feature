Feature: See Favorites
  As a user
  I want to see what meals I have favorited
  In order to decide what to eat

  Background:
    Given I have a valid account
    And I am logged in

  Scenario: see favorites
    Given I am on the home page
    And I have favorites
    When I click the my favorites link
    Then I can see all my favorites

  Scenario: see no favorites
    Given I am on the home page
    And I have no favorites
    When I click the my favorites link
    Then I am informed that I have no favorites