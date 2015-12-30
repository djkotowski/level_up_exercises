Feature: Make Favorites
  As a user
  I want to favorite my meals
  In order to find them later

  Background:
    Given I have a valid account
    And I am logged in
    And there are merchants for 60606

  Scenario: Adding a favorite
    Given I am looking at a merchant with a menu
    When I click favorites
    And I click the my favorites link
    Then the meal is visible in my account as a favorite

  Scenario: duplicate favoriting
    Given that menu item is already a favorite
    When I go to that merchant page
    Then there is a remove button