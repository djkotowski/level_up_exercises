Feature: friends favorites
  As a user
  I want to find the favorite meals of my friends
  In order to decide what to eat

  Background:
    Given I have a valid account
    And I am logged in
    And there are merchants for 60606

  Scenario: Happy
    Given I am on the home page
    And there are many users
    And there are other users who have favorites
    When I click the friends favorites button
    Then I see my friends favorites

  Scenario: Sad
    Given I am on the home page
    And there are many users
    And there are no other users who have favorites
    When I click the friends favorites button
    Then I am informed that my friends have no favorites

  Scenario: Bad
    Given I am on the home page
    And there are no other users
    When I click the friends favorites button
    Then I am informed that I have no friends