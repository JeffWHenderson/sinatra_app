class CharacterController < ApplicationController

      get '/characters' do
        erb :"/character/characters"
      end

      # ///////// CREATE ///////////
      get '/characters/new' do
        erb :'/character/create_character'
      end

        # ///////// READ ///////////
      get '/characters/:id' do
        @character = Character.find_by_id(params[:id])
        erb :'/character/show_character'
      end

          # ///////// UPDATE ///////////
      get '/characters/:id/update' do
        @character = Character.find_by_id(params[:id])
        erb :'/character/edit_character'
      end
          # ////////this route wasn't working until i put it in ApplicationController????
      patch '/characters/:id' do
        @character = Character.find_by_id(params[:id])
        @character.name = params[:name]
        @character.save
        #right here is where the edit form redirects and the character needs to be patched
        erb :'/character/show_character'
      end

            # ///////// DESTROY ///////////
      delete '/characters/:id/delete' do
       "The last thing to do i think!!!"
      end
end
