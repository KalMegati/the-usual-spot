class WritersController < ApplicationController

    get "/writers" do #displays all writers
        erb :'/writers/index'
    end
    
    get "/writers/new" do #page to create a new writer
        erb :'/writers/new'
    end

    post "/writers" do #creates the new writer, then opens their page
        @writer = Writer.create(params[:writer])
        redirect to "/writers/#{@writer.id}"
    end

    get "/writers/:id" do
        @writer = Writer.find(params[:id])
        erb :'/writers/show'
    end




end