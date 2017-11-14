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

              # /////////// characters update and delete //////////////
  patch '/characters/:id' do
    @character = Character.find_by_id(params[:id])

    if "#{@character.user_id}" == "#{session[:user_id]}"
      @character.fill(params)
      flash[:message] = "character has been updated"
      erb :'/character/show_character'
    else
      flash[:message] = "Sorry you may only update characters that belong to you"
      redirect '/characters'
    end
  end


    delete '/characters/:id/delete' do
      @character = Character.find_by_id(params[:id])
      if "#{@character.user_id}" == "#{session[:user_id]}"
        @character.delete
        flash[:message] = "Your character has been deleted"
        redirect to '/characters'
      else
        flash[:message] = "Sorry you may only update characters that belong to you"
        redirect 'characters'
      end
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
