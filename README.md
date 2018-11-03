# Bowling for Cucumbers

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
