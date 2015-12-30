Feature: Adding Favorite Meals
As a user
I want to favorite my meals
In order to find them later

  Background:
    Given I have a valid account
    And I am logged in
    And I search for merchants by ZIP

  Scenario: Adding a meal to my favorites
    And I am on a merchant menu page
    When I favorite a meal
    Then I want it to be added to my favorites list
