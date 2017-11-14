require 'rack-flash'

class CharacterController < ApplicationController
      use Rack::Flash

      get '/characters' do
        if logged_in?
          erb :"/character/characters"
        else
          flash[:message] = "Please Log In or Sign Up to see this page"
          redirect '/login'
        end
      end

      # ///////// CREATE ///////////
      get '/characters/new' do
        @user = User.find_by_id(session[:user_id])
        if logged_in?
          erb :'/character/create_character'
        else
          flash[:message] = "Please Log In or Sign Up to see this page"
          redirect '/login'
        end
      end

      post '/characters/new' do
        @character = Character.new
        @character.fill(params)
        @character.user_id = "#{session[:user_id]}"
        @character.save
        redirect "/characters"
      end

        # ///////// READ ///////////
      get '/characters/:id' do
        if logged_in?
          @character = Character.find_by_id(params[:id])
          erb :'/character/show_character'
        else
          flash[:message] = "Please Log In or Sign Up to see this page"
          redirect '/login'
        end
      end

          # ///////// UPDATE ///////////
      get '/characters/:id/update' do

        @character = Character.find_by_id(params[:id])
        if logged_in?
          erb :'/character/edit_character'
        else
          flash[:message] = "Please Log In or Sign Up to see this page"
          redirect '/login'
        end
      end

end
