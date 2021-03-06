class LocationsController < ApplicationController

    get "/locations" do #displays all locations with blurbs
        @locations = Location.all
        erb :'/locations/index'
    end

    get "/locations/new" do #page to create new location
        unless session[:writer_id]
            redirect to "/hacker"
        else
            erb :'/locations/new'
        end
    end

    post "/locations/new" do #creates a new location
        @location = Location.create(params[:location])
        if @location.errors.any?
            @errors = @location.errors
            erb :error
        else
            @location.writer_id = session[:writer_id]
            @location.save
            redirect to "/home"
        end
    end

    get "/locations/:id" do #displays the location
        @location = Location.find(params[:id])
        erb :'/locations/show'
    end

    get "/locations/:id/edit" do #page to edit location
        @location = Location.find(params[:id])
        binding.pry
        unless @location.writer == current_user(session)
            redirect to "/hacker"
        else
            erb :'/locations/edit'
        end
    end

    patch "/locations/:id" do #edits the location
        @location = Location.find(params[:id])
        @location.update(params[:location])
        if @location.errors.any?
            @errors = @location.errors
            erb :error
        else
            redirect to "/locations/#{@location.id}"
        end
    end

    delete "/locations/:id" do #deletes the location and their haunts
        @location = Location.find(params[:id])
        @location.delete
        redirect to "/locations"
    end

end