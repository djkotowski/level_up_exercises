Feature: Viewing menus
  As a user
  I want to view a restaurant's menu(s)
  In order to get food

  Background:
    Given I have a valid account
    And I am logged in
    And there are merchants for 60654

    Scenario: Navigating to a menu from a merchant
      Given I am on the home page
      And I search for 60654
      When I visit a merchant page
      Then I see that merchant's menus
