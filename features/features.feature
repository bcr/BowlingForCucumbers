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

Scenario: bowling a spare followed by an open frame
  Given I throw a 8
  And I throw a 2
  And I throw a 3
  And I throw a 6
  Then the scorecard should look like "8 / 13 3 6 22"

Scenario: bowling a perfect game
  Given I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  And I throw a 10
  Then the scorecard should look like "X - 30 X - 60 X - 90 X - 120 X - 150 X - 180 X - 210 X - 240 X - 270 X - 300"

Scenario: bowling a normal game
  Given I throw a 8
  And I throw a 0
  And I throw a 5
  And I throw a 5
  And I throw a 3
  And I throw a 5
  And I throw a 8
  And I throw a 1
  And I throw a 7
  And I throw a 1
  And I throw a 10
  And I throw a 9
  And I throw a 1
  And I throw a 10
  And I throw a 10
  And I throw a 8
  And I throw a 2
  And I throw a 6
  Then the scorecard should look like "8 0 8 5 / 21 3 5 29 8 1 38 7 1 46 X - 66 9 / 86 X - 114 X - 134 8 / 150"
