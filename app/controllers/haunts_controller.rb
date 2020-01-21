class HauntsController < ApplicationController

    get "/locations/:id/haunts" do #page to select which characters haunt the location
        @location = Location.find(params[:id])
        @writer = Writer.find_by(id: session[:writer_id])
        erb :'/haunts/new'
    end

    post "/locations/:id/haunts" do #creates the haunt
        Haunt.create(location_id: params[:id], character_id: params[:character_id], blurb: params[:blurb])
        redirect to "/characters/#{params[:character_id]}"
    end

    delete "/haunts/:id" do #deletes the haunt
        @haunt = Haunt.find(params[:id])
        @haunt.delete
        redirect to "/characters/#{@haunt.character.id}"
    end

end