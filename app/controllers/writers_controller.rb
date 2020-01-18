class WritersController < ApplicationController

    get "/writers" do #displays all writers
        @writers = Writer.all
        erb :'/writers/index'
    end
    
    get "/writers/new" do #page to create a new writer
        erb :'/writers/new'
    end

    post "/writers/new" do #creates the new writer, then sends back to home
        @writer = Writer.create(params[:writer])
        session[:writer_id] = @writer.id
        redirect to "/home"
    end

    get "/writers/login" do #page to log in as existing writer
        erb :'/writers/login'
    end

    post "/writers/login" do #logs in, then sends back to home
        @writer = Writer.find_by(params[:writer])
        session[:writer_id] = @writer.id
        redirect to "/home"
    end

    get "/writers/:id" do #displays the writer and their creations
        @writer = Writer.find(params[:id])
        erb :'/writers/show'
    end

    get "/writers/:id/edit" do #page for writer to edit their information
        @writer = Writer.find(params[:id])
        redirect to "/error" unless session[:writer_id] == @writer.id
        erb :'/writers/edit'
    end

    patch "/writers/:id" do #edits the writer's information, then displays them
        @writer = Writer.find(params[:id])
        @writer.update(params[:writer])
        redirect to "/writers/#{@writer.id}"
    end

    delete "/writers/:id" do #deletes the writer and their creations
        @writer = Writer.find(params[:id])
        @writer.characters.each { |character|
            character.haunts.each { |haunt| 
                haunt.delete
            }
            character.delete
        }
        @writer.locations.each { |location|
            location.haunts.each { |haunt| 
                haunt.delete
            }
            location.delete
        }
        @writer.delete
        session.clear
        redirect to "/home"
    end

end