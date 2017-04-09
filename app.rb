require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params[:name]
    @mappings = {
      "name"=>"Team Name",
      "coach"=>"Coach", 
      "pg"=> "Point Guard", 
      "sg"=>"Shooting Guard", 
      "pf"=>"Power Forward", 
      "sf"=>"Small Forward", 
      "c"=>"Center"
    }

    @team = params.dup.map do |k, v|
      [@mappings[k], v]
    end.to_h

    erb :team
  end

end
