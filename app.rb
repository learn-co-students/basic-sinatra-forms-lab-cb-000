require 'sinatra/base'

class App < Sinatra::Base

  configure do
    set :public_dir, 'public'
    set :views, 'views'
  end
  get '/newteam' do
    
    erb :newteam
  end

  post '/team' do
    @team = [] 
    @team << "Team Name: #{params[:name]}"
    @team << "Coach: #{params[:coach]}"
    @team << "Point Guard: #{params[:pg]}"
    @team << "Shooting Guard: #{params[:sg]}"
    @team << "Small Forward: #{params[:sf]}"
    @team << "Power Forward: #{params[:pf]}"
    @team << "Center: #{params[:c]}"
    erb :team
  end

end
