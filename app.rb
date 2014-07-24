require 'sinatra'
require 'json'

get '/' do
  request = Rack::Request.new(env)
  json = JSON.generate({
      ip: request.ip,
      agent: request.user_agent
    })
  "#{json}"
end
