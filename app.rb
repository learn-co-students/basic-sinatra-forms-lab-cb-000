require 'sinatra/base'

class App < Sinatra::Base
  helpers do
    def capitalize_words(string)
      string.split(/[ _]/).map(&:capitalize).join(' ')
    end
  end

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = params[:name]
    @team_info = {
      coach: params[:coach],
      point_guard: params[:pg],
      shooting_guard: params[:sg],
      small_forward: params[:sf],
      power_forward: params[:pf],
      center: params[:c]
    }
    erb :team
  end

end
