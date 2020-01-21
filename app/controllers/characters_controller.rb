class CharactersController < ApplicationController

    get "/characters" do #displays all characters with blurbs
        @characters = Character.all
        erb :'/characters/index'
    end

    get "/characters/new" do #page to create new character
        unless session[:writer_id]
            redirect to "/hacker"
        else
            erb :'/characters/new'
        end
    end

    post "/characters/new" do #creates a new character
        @character = Character.create(params[:character])
        if @character.errors.any?
            redirect to "/error"
        else
            @character.writer_id = session[:writer_id]
            @character.save
            redirect to "/home"
        end
    end

    get "/characters/:id" do #displays the character
        @character = Character.find(params[:id])
        erb :'/characters/show'
    end

    get "/characters/:id/edit" do #page to edit character
        @character = Character.find(params[:id])
        unless session[:writer_id] == @character.writer.id
            redirect to "/hacker"
        else
            erb :'/characters/edit'
        end
    end

    patch "/characters/:id" do #edits the character
        @character = Character.find(params[:id])
        @character.update(params[:character])
        if @character.errors.any?
            redirect to "/error"
        else
            redirect to "/characters/#{@character.id}"
        end
    end

    delete "/characters/:id" do #deletes the character and their haunts
        @character = Character.find(params[:id])
        @character.delete
        redirect to "/characters"
    end

end