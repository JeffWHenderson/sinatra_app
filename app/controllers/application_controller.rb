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

  #/////////// this shouldn't go here.  figure out why it isn't patching in CharacterController
  patch '/characters/:id' do
    @character = Character.find_by_id(params[:id])
      @character.name = params[:name]
      @character.description = params[:description]
      @character.race = params[:race]
      @character.strength = params[:strength]
      @character.intelligence = params[:intelligence]
      @character.dexterity = params[:dexterity]
      @character.wisdom = params[:wisdom]
      @character.charisma = params[:charisma]
      @character.constitution = params[:constitution]
      @character.level = params[:level]
    @character.save
    #right here is where the edit form redirects and the character needs to be patched
    erb :'/character/show_character'
  end
end
