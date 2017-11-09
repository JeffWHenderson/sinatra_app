require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'

    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get "/" do
    erb :welcome
  end
  patch '/characters/:id' do
    @character = Character.find_by_id(params[:id])
    @character.name = params[:name]
    @character.save
    #right here is where the edit form redirects and the character needs to be patched
    erb :'/character/show_character'
  end
end
