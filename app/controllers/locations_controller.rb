class LocationsController < ApplicationController

    get "/locations" do #displays all locations with blurbs

    end

    get "/locations/new" do #page to create new location

    end

    post "/locations/new" do #creates a new location

    end

    get "/locations/:id" do #displays the location

    end

    get "/locations/:id/edit" do #page to edit location

    end

    patch "/locations/:id" do #edits the location

    end

    delete "/locations/:id" do #deletes the location and its haunts

    end

end