require 'sinatra'
require "sinatra/reloader" if development?

#variables

#routes
get '/' do
  "home"
end

get '/:city' do # path variables
  params.inspect
end

get '/dado/:numero' do
  dado = 2 
  if params[:numero].to_i == dado
    erb :ganaste
  else
    "El fbi para tu casa ..."
  end
end

not_found do
  "pa' donde vas??"
end
