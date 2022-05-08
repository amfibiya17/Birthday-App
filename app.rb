require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/birthday'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    session[:birthday] = Birthday.new(params[:birthday_date])
    session[:name] = params[:name]
    @birthday = session[:birthday]
    redirect to '/birthday'
  end

  get '/birthday' do
    @birthday = session[:birthday]
    @name = session[:name]
    erb :birthday
  end

  run! if app_file == $0
end
