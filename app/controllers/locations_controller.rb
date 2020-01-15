class LocationsController < ApplicationController

    get "/locations" do #displays all locations with blurbs
        @locations = Location.all
        erb :'/locations/index'
    end

    get "/locations/new" do #page to create new location
        erb :'/locations/new'
    end

    post "/locations/new" do #creates a new location
        @location = Location.create(params[:location])
        @location.writer_id = session[:writer_id]
        @location.save
        redirect to "/home"
    end

    get "/locations/:id" do #displays the location
        @location = Location.find(params[:id])
        @writer = Writer.find(@location.writer_id)
        erb :'/locations/show'
    end

    get "/locations/:id/edit" do #page to edit location
        @location = Location.find(params[:id])
        @writer = Writer.find(@location.writer_id)
        erb :'/locations/edit'
    end

    patch "/locations/:id" do #edits the location
        @location = Location.find(params[:id])
        @location.update(params[:location])
        redirect to "/locations/#{@location.id}"
    end

    delete "/locations/:id" do #deletes the location and their haunts
        @location = Location.find(params[:id])
        @location.delete
        redirect to "/locations"
    end

end