Feature: Bowling man

Background:
  Given I am bowling a new game

Scenario: bowling a strike
  Given I throw a strike
  Then the scorecard should look like "X - 10"

Scenario: bowling a strike followed by a non-strike
  Given I throw a strike
  And I throw a 3
  Then the scorecard should look like "X - 13 3"

Scenario: bowling a strike followed by an open frame
  Given I throw a strike
  And I throw a 3
  And I throw a 6
  Then the scorecard should look like "X - 19 3 6 28"

Scenario: bowling a spare
  Given I throw a 8
  And I throw a 2
  Then the scorecard should look like "8 / 10"

Scenario: bowling a spare followed by a non-spare
  Given I throw a 8
  And I throw a 2
  And I throw a 3
  Then the scorecard should look like "8 / 13 3"

