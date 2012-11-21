Feature: Merge Articles
  As a blog administrator
  In order to get a good grade in my class
  I want to be able to merge similar articles together

  Background:
    Given the blog is set up
    And an article "Platypus" has content "The platypus is cool!"
    And an article "Australian Monsters!" has content "I just saw a monster!"
    And I am logged into the admin panel

  Scenario: Merged articles contain content from feeder articles
    Given I am on the article "Platypus"
    When I fill in "Article ID" with the id for "Australian Monsters!"
    And I press "Merge"
    Then I should be on the "Platypus" page
    And I should see "The platypus is cool"
    And I should see "I just saw a monster!"

  Scenario: Merge comments when merging articles
    Given article "Platypus" has comment "Yo! Platypus is dope. yo"
    And article "Australian Monsters!" has comment "Probably a Taz"
    When I fill in "Article ID" with the id for "Australian Monsters!"
    And I press "Merge"
    Then I should be on the "Platypus" page
    And I should see "Yo! Platypus is dope. yo"
    And I should see "Probably a Taz"

  Scenario: Deny access to intruders
    Given I am not logged in as an admin
    And I am on the article "Platypus"
    Then I should not see "Merge Article"

