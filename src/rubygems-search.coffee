# Description
#   Search rubygems.org for a specific gem.
#
# Commands:
#   hubot gems me <query> - Search rubygems.org for a gem
#
# Author:
#   Jon Rohan <jon@jonrohan.me>


module.exports = (robot) ->
  robot.respond /gems( me)? (.*)/i, (msg) ->
    query = msg.match[2]
    robot.http("https://rubygems.org/api/v1/search.json")
      .query({
        query: query
      })
      .get() (err, res, body) ->
        gems = JSON.parse(body)

        return msg.send "No gem found." if gems.length == 0

        gem = gems[0]

        msg.send "#{gem.name} — #{gem.info}\nlatest release: v.#{gem.version}\n#{gem.project_uri}"
