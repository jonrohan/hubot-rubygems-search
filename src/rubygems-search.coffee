# Description
#   Use hubot to search rubygems.org for a specific gem.
#
# Commands:
#   hubot gem me <query> - Search rubygems.org for a gem
#
# Author:
#   Jon Rohan <jon@jonrohan.me>


module.exports = (robot) ->
  robot.respond /gem( me)? (.+)/i, (msg) ->
    query = msg.match[2]
    robot.http("https://rubygems.org/api/v1/search.json")
      .query({
        query: query
      })
      .get() (err, res, body) ->

        return msg.send "Error :: #{err}" if err
        try
          gems = JSON.parse(body)
        catch error
          return msg.send "Error :: rubygems api error."

        gem = gems.reverse().pop()

        return msg.send "No gem found." unless gem

        msg.send "#{gem.name} — #{gem.info}\nlatest release: #{gem.version}\n#{gem.project_uri}"
