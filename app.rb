require 'sinatra/base'

class App < Sinatra::Base

  # Create a route that responds to a GET request at /newteam
  # sends a 200 status code
  # renders basketball team form
  get '/newteam' do
    erb :newteam
  end
end
