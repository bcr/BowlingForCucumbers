var assert = require('assert')

const { Given, When, Then } = require('cucumber')

var game = { }

function init_game() {
  game = {
    throws : []
  }
}

function throw_ball(number) {
  game.throws.push(number)
}

function get_scorecard() {
  var number_throws = game.throws.length;

  return_string = ""
  total_score = 0
  frame_score = 0
  frame_throws = 0
  frame_number = 1

  for (var counter = 0;counter < number_throws;++counter) {
    if (frame_number > 10) {
      break
    }

    frame_score += game.throws[counter]
    frame_throws += 1
    frame_done = false
    is_strike = false

    if (frame_score == 10) {
      if (frame_throws == 1) {
        return_string += "X "
        is_strike = true
      }
      else {
        return_string += "/ "
      }

      if ((counter + 1) <= (number_throws - 1)) {
        frame_score += game.throws[counter + 1]
        if (frame_number == 10) {
          this_throw = game.throws[counter + 1]
          this_throw = (this_throw == 10) ? "X" : this_throw
          return_string += this_throw + " "
        }
        else if (is_strike) {
          return_string += "- "
        }
      }

      if (is_strike) {
        if ((counter + 2) <= (number_throws - 1)) {
          this_throw = game.throws[counter + 2]
          frame_score += this_throw
          this_throw = (this_throw == 10) ? "X" : this_throw
          if (frame_number == 10) {
            return_string += this_throw + " "
          }
        }
      }
      frame_done = true
    }
    else {
      return_string += game.throws[counter] + " "
      frame_done = (frame_throws == 2)
    }

    if (frame_done) {
      total_score += frame_score
      frame_number += 1

      return_string += total_score + " "

      frame_score = 0
      frame_throws = 0
    }
  }

  return return_string.trim()
}

         Given('I am bowling a new game', function (callback) {
           // Write code here that turns the phrase above into concrete actions
           init_game()
           callback(null);
         });

         Given('I throw a strike', function (callback) {
           // Write code here that turns the phrase above into concrete actions
           throw_ball(10)
           callback(null);
         });

         Given('I throw a {int}', function (int, callback) {
           // Write code here that turns the phrase above into concrete actions
           throw_ball(int)
           callback(null);
         });

         Then('the scorecard should look like {string}', function (string, callback) {
           // Write code here that turns the phrase above into concrete actions
           assert.equal(get_scorecard(), string)
           callback(null);
         });

