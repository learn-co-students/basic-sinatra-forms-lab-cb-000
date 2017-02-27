require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @pos = ["Team Name: ","Coach: ","Point Guard: ","Shooting Guard: ","Power Forward: ","Small Forward: ","Center: "]
    data = params.values
    @pos = @pos.map.with_index {|v,i| v + data[i]}
    erb :team
  end

end
