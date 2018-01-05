require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    resp = Rack::Response.new
    resp.status = 200

    erb :newteam
  end

  post '/team' do
    @teamname = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @sf = params[:sf]
    @pf = params[:pf]
    @c = params[:c]

    erb :team
  end
end
