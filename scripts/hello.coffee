# Description:
#   Hubot greets and waves 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   Patrickskim
person = "Some dude"

hello = [
  "Vassup?"
  "Damn #{person}, where have you been?"
  "Captain on the deck."
  "/play bueller"
]

farewell = [
  "Asshat has left the building."
  "I'm pretty glad that #{person} left, it was getting a little awkward in here."
]

module.exports = (robot) ->
  robot.enter (msg) ->
    person = msg.message.user.name
    msg.send msg.random hello

  robot.leave (msg) ->
    person = msg.message.user.name
    msg.send msg.random farewell

