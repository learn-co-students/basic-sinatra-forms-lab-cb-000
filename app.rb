require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @params = params
    #@reversed_string = original_string.reverse

    erb :team
  end


end
