require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/birthday'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do

    redirect to '/birthday'
  end

  get '/birthday' do
    erb :birthday
  end

  # get '/birthday_soon' do
  #   erb :birthday_soon
  # end

  run! if app_file == $0
end