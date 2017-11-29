require 'sinatra/base'

class App < Sinatra::Base

get '/newteam' do
erb :newteam
end

post '/team' do
   @position= params.to_s
erb :team
end

end
