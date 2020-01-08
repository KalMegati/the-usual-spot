class WritersController < ApplicationController

    get "/writers" do #displays all writers
        @writers = Writer.all
        erb :'/writers/index'
    end
    
    get "/writers/new" do #page to create a new writer
        erb :'/writers/new'
    end

    post "/writers/new" do #creates the new writer, then opens their page
        @writer = Writer.create(params[:writer])
        session[:writer_id] = @writer.id
        redirect to "/home"
    end

    get "/writers/login" do
        erb :'/writers/login'
    end

    post "/writers/login" do #logs
        @writer = Writer.find_by(params[:writer])
        session[:writer_id] = @writer.id
        redirect to "/home"
    end

    get "/writers/:id" do #displays the writer and their creations
        @writer = Writer.find(params[:id])
        erb :'/writers/show'
    end




end