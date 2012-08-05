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
  robot.hear /has entered the room/i, (msg) ->
    msg.send msg.random hellos


module.exports = (robot) ->
  robot.enter (response) ->
    person = response.message.user.name

    msg.send msg.random hello

  robot.leave (response) ->
    person = response.message.user.name
    msg.send msg.random farewell

