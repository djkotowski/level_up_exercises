Feature: Browsing Other's Favorite Meals
As a user
I want to browse the favorite meals of others
In order to decide what to eat

  Background:
    Given I have a valid account
    And I am logged in

  Scenario: Browse for other's favorites
    Given I am on the favorites browse page
    Then I want to browse other's favorite meals