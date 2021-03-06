Feature: user subscribes to a comic from a list
  As a registered user
  I want to pick from a list of comics
  So that I can easily add more comics to my list

  Scenario: Subscribe to a comic
    Given I am signed in
    And a comic already exists
    When I go to the comics page
    And I follow "Subscribe"
    Then I should see "Subscribed to xkcd"
    And I should see "xkcd"
    And I should see "Unsubscribe"
