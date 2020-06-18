require 'sinatra/base'

class App < Sinatra::Base

get '/newteam' do

  erb :newteam
end

post '/newteam' do

  @name = params[:name]
  @coach = params[:coach]
  @pointGuard = params[:pg]
  @shootingGuard = params[:sg]
  @smallForward = params[:sf]
  @powerForward = params[:pf]
  @center = params[:c]

  erb :team
end

end
