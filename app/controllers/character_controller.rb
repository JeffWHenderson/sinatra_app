class CharacterController < ApplicationController

      get '/characters' do
        erb :"/character/characters"
      end

      # ///////// CREATE ///////////
      get '/characters/new' do
        @user = User.find_by_id(session[:user_id])
        if logged_in?
          erb :'/character/create_character'
        else
          #      /////////////////////// flash message here //////////////////
          redirect '/login'
        end
      end

      post '/characters/new' do
        @character = Character.new
        @character.fill(params)
        @character.user_id = session[:user_id]
        redirect "/characters"
      end

        # ///////// READ ///////////
      get '/characters/:id' do
        if logged_in?
          @character = Character.find_by_id(params[:id])
          erb :'/character/show_character'
        else
                  # //////////////////// add flash message here ///////////////
          redirect '/login'
        end
      end

          # ///////// UPDATE ///////////
      get '/characters/:id/update' do
        
        @character = Character.find_by_id(params[:id])
        if logged_in?
          erb :'/character/edit_character'
        else
            # //////////////////// add flash message here ///////////////
          redirect '/login'
        end
      end

                  #/////////////// update and destroy routes go here if bug is fixed //////////////
            # ///////// DESTROY ///////////

end
