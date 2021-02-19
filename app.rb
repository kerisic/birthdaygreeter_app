require 'sinatra/base'
require './lib/birthday'

class Greeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    @name = params[:name]
    session[:name] = @name
    $birthday = Birthday.new(params[:day], params[:Month], params[:year])
    $birthday.is_today? ? (redirect '/birthday') : (redirect '/when')
  end

  get '/birthday' do
    @name = session[:name]
    erb :bday
  end

  get '/when' do
    @days = $birthday.days_left
    erb :nope
  end

  run! if app_file == $0
end
