class HauntsController < ApplicationController

    get "/location/:id/haunts" do #page to select which characters haunt the location
        @location = Location.find(params[:id])
        @writer = Writer.find_by(id: session[:writer_id])
        erb :'/haunts/new'
    end

    post "/location/:id/haunts" do #creates the haunt
        binding.pry
    end

    delete "/haunts/:id" do #deletes the haunt

    end

end