class CharactersController < ApplicationController

    get "/characters" do #displays all characters with blurbs

    end

    get "/characters/new" do #page to create new character
        
    end

    post "/characters/new" do #creates a new character

    end

    get "/characters/:id" do #displays the character

    end

    get "/characters/:id/edit" do #page to edit character

    end

    patch "/characters/:id" do #edits the character

    end

    delete "/characters/:id" do #deletes the character and their haunts

    end

end