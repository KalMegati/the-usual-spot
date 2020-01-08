require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/")}

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/welcome" do
    erb :welcome
  end

  get "/" do
    erb :index
  end

end
