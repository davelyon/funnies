Feature: Admin adds a comic
  As a site administrator
  I want to add a new comic
  So other users can subscribe to the comics

  Scenario: Add a comic with an XPath
    Given I am signed in as an admin
    When I go to the comics page
    And I follow "Add Comic"
    And I fill in "Name" with "xkcd"
    And I fill in "Homepage" with "http://xkcd.com"
    And I fill in "Comic Page" with "http://xkcd.com"
    And I fill in "Title XPath" with a title xpath
    And I fill in "Image XPath" with an image xpath
    And I press "Save"
    Then I should see "xkcd"
    And I should see "Comic added successfully"

    When I follow "Edit Comic"
    Then the "Name" field should contain "xkcd"
    And the "Title XPath" field should contain a title xpath
    And the "Image XPath" field should contain an image xpath

  Scenario: User does not see add comic link
    Given I am signed in as a user
    When I go to the comics page
    Then I should not see "Add Comic"
