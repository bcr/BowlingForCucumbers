# Bowling for Cucumbers [![Build Status](https://travis-ci.org/bcr/BowlingForCucumbers.svg?branch=master)](https://travis-ci.org/bcr/BowlingForCucumbers)

This was an example I did at one point to try out the [cucumber](https://docs.cucumber.io/installation/javascript/) framework for [Behavior Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development). Score a ten-pin bowling game based on a series of throws.

Standard `npm` rules apply -- `npm install && npm test` will do nicely.

Note that this current version is not meant to be a perfect example of coding, but an exploration of BDD. Like given some feature file, making the tests pass without regard for any larger context of reusability or maintainability. Or utility.

Look, it's in JavaScript. I barely know JavaScript. And it's about bowling.

## BDD Syntax

There's not a lot to the syntax for defining the features. Here's some of the steps:

```javascript
Given('I am bowling a new game', function (callback) {

Given('I throw a strike', function (callback) {

Given('I throw a {int}', function (int, callback) {

Then('the scorecard should look like {string}', function (string, callback) {
```

As simple as this is, it defines my current set of behaviors. For instance:

```cucumber
Scenario: bowling a spare followed by an open frame
  Given I throw a 8
  And I throw a 2
  And I throw a 3
  And I throw a 6
  Then the scorecard should look like "8 / 13 3 6 22"
```

## Scorecard Format

The output is basically a space-separated sequence of all of the boxes on a normal bowling scoresheet. So `8 / 13 3` is an 8 on the first ball, a spare on the second ball, and 13 as the running score for the game, and 3 is the first ball on the next frame. `8 1 9` is an 8 on the first ball, a 1 on the second ball, and a 9 as the running score for the game.
