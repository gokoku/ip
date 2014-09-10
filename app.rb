require 'sinatra'
require 'json'

get '/' do
  request = Rack::Request.new(env)
  JSON.generate( { access:
                  [{ ip: request.ip,
                     agent: request.user_agent }]} )
end
