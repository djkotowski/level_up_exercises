Feature: Removing Favorite Meals
As a user
I want to unfavorite my meals
In order to track only the meals I want

  Background:
    Given I have a valid account
    And I am logged in
    And I search for merchants by ZIP
    And I am on a merchant menu page
    And I favorite a meal

  Scenario: Remove meal from favorites' page
    Given I am on my favorites page
    When I remove a meal
    Then The meal should not be in my favorites

  Scenario: Remove meal from merchant page
    When I am on a merchant menu page
    And I unfavorite a meal
    Then The meal should not be in my favorites