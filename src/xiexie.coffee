# Description:
#   Hubot responds any thank message politely. Phrases from:
#   http://www.macmillandictionary.com/thesaurus-category/british/Ways-of-accepting-someone-s-thanks
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot 谢谢 [you] - Hubot accepts your thanks
#   谢谢 hubot - same
#
# Author:
#   github.com/yesmeck
#

response = [
  "不用谢",
  "别客气嘛",
  "很荣幸为你效劳",
  "这是我应该做的",
  "不，不，谢谢你！",
  "这没什么",
  "应该的",
  "不會"
]

module.exports = (robot) ->
  robot.respond /(谢谢).*/i, (msg) ->
    msg.send msg.random response

  robot.hear /谢谢 (.*)/i, (msg) ->
    name = msg.match[1]
    if name.toLowerCase().indexOf robot.name.toLowerCase() > -1
      msg.send msg.random response