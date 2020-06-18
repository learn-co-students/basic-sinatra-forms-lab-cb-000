require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    @pg = params['pg']
    @coach = params['coach']
    @name = params['name']
    @sg = params['sg']
    @sf = params['sf']
    @pf = params['pf']
    @c = params['c']
    erb :team
  end
end
