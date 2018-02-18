require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do #Create a route that responds to a GET request at /newteam
    erb :newteam
  end


  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team
  end

end
