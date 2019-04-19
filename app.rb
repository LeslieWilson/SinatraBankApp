require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require "sinatra/reloader"
require'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  erb :main
end

get "/teams" do
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  @team = params[:team_name]
  @data = TeamData::ROLL_CALL

erb :show
end
