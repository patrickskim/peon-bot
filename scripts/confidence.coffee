# Description:
#   Hubot is now cockier than ever
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
#   iangreenleaf, modified by pk

messages = [
  "Yup, thats right."
  "You know it."
  "I'm just curious, why am I sooooo good?"
  "That's right."
  "I came here to kick ass and chew bubble gum and I'm all out of bubble gum."
  "I feel ya."
  "Outstanding."
  "Keep your shirt on sparky."
  "Of course."
  "I'm pretty much, proof of perfection."
  "Ego configuration, now on overload."
  "Your flattery is the only reason why I tolerate your incompetence."
  "I know, its like I shit diamonds."
  "If only you were as good as me."
]

getting_cocky = (msg) ->
  msg.send msg.random messages

module.exports = (robot) ->
  compliments = "awesome|cool|rock|rocks|badass|bad ass|excellent|great|good|good job|best|slow|kick ass|outstanding|baller|magnificent"

  r = new RegExp "\\b(you|u|is|are)\\b.*(#{compliments})", "i"
  robot.respond r, getting_cocky

  r = new RegExp "(#{compliments}) ((ro)?bot|#{robot.name})", "i"
  robot.hear r, getting_cocky
