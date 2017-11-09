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
        erb :'/character/show_character'
      end

          # ///////// UPDATE ///////////
      get '/characters/:id/update' do
        erb :'/character/edit_character'
      end

            # ///////// DESTROY ///////////
      delete '/characters/:id/delete' do
       "The last thing to do i think!!!"
      end
end
