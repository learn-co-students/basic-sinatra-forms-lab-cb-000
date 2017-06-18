require 'sinatra/base'

class App < Sinatra::Base
  TEAM_ACTION = '/team'
  TEAM_NAME = :team_name
  MEMBERS = [:coach, :point_guard, :shooting_guard, :power_forward, :small_forward, :center]

  get '/newteam' do
    erb :newteam
  end

  post TEAM_ACTION do
    @params = params
    erb :team
  end

  def format_label(symbol)
    return symbol.to_s.split("_").collect{|s| s.capitalize}.join(" ")
  end
end
