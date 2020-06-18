require 'sinatra/base'

class App < Sinatra::Base

  # Create a route that responds to a GET request at /newteam
  # sends a 200 status code
  # renders basketball team form
  get '/newteam' do
    erb :newteam
  end

  # Create a route that responds to a POST request at /team
  # Have the form send a POST request to this route.
  # Upon submission, pass the submitted data to the team.erb template.
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
