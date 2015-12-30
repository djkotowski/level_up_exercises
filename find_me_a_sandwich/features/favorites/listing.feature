Feature: Listing Favorite Meals
As a user
I want to see what meals I have favorited
In order to decide what to eat

  Background:
    Given I have a valid account
    And I am logged in
    And I search for merchants by ZIP

  Scenario: Viewing my favorite meals
    Given I am on a merchant menu page
    And I favorite a meal
    When I am on my favorites page
    Then I should see a list of my favorite meals
    