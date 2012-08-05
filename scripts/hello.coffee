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

module.exports = (robot) ->
  robot.enter (msg) ->
    person = msg.message.user.name


    hello = [
      "#person, vassup?"
      "Damn #{person}, where have you been?"
      "Captain on the deck."
      "who the f*ck let #{person} in?"
      "the #{person} has come back to this chatroom..."
      "uh-oh it's '#{person}. The neighborhood has gone south already"
      "Hide the silverware, it's #{person}'"
    ]

    msg.send msg.random hello

  robot.leave (msg) ->
    person = msg.message.user.name

    farewell = [
      "Hear ye, bring forth the finest mead. For today #{person} has been vanquished from our lands."
      "Finally, best news I've heard all day."
      "Even after leaving, the stench of #{person} lingers..."
      "I thought #{person} would never leave"
      "And with #{person} absence, peace & prosperity spread throughout the land. It was as if a dark black curse had been lifted off."
      "I'm pretty glad that #{person} left, it was getting a little awkward in here."
    ]
    
    msg.send msg.random farewell

