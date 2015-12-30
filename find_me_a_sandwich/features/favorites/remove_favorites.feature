Feature: Remove Favorites
  As a user
  I want to unfavorite my meals
  In order to track only the meals I want

  Background:
    Given I have a valid account
    And I am logged in
    And there are merchants for 60606

  Scenario: Happy removal
    Given I have specific favorites
    And I am on the favorites page
    When I click to remove a favorite
    Then that favorite is removed

  Scenario: Happy 2 - remove two favorites 
    Given I have specific favorites
    And I am on the favorites page
    When I click to remove a favorite
    And I click to remove another favorite
    Then another favorite is removed

  Scenario: Sad - no favorites to remove
    Given I am on the favorites page
    And I have no favorites
    Then I should not be able to click a remove button
