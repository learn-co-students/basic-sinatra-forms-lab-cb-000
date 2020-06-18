require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    @name = params[:name]
    @coach = params[:coach]
    @sg = params[:sg]
    @pg = params[:pg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]

    erb :team
  end

end
