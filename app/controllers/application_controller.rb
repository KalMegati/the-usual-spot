require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get "/welcome" do
    erb :welcome
  end

  get "/" do
    erb :index
  end

  get "/home" do
    @writers = Writer.all
    erb :home
  end

  post "/logout" do
    session.clear
    redirect to "/home"
  end

  post "/login" do
    @writer = Writer.find(params)
    session[:writer_id] = @writer.id
    redirect to "/home"
  end

  def spelunker
    request.path_info
  end

end
