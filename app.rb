require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do

    erb :newteam
  end

  post '/team' do

    @members = []
     params.each do |key, value|
          @members << value
        end

    erb :team
  end
end
