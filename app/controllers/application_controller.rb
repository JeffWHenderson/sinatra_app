require './config/environment'

class ApplicationController < Sinatra::Base
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'

    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get "/" do
    erb :welcome
  end

  #/////////// this shouldn't go here.  figure out why it isn't patching in CharacterController

  patch '/characters/:id' do
    @character = Character.find_by_id(params[:id])

    if "#{@character.user_id}" == "#{session[:user_id]}"
      @character.fill(params)
      erb :'/character/show_character'
    else
      redirect '/characters'
      # //////////////////////////// put flash message here ////////////////////////////
    end
  end


    delete '/characters/:id/delete' do
      @character = Character.find_by_id(params[:id])
      @character.delete
      redirect to '/characters'
    end

  helpers do

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end
end
