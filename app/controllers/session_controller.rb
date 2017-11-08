class SessionController < ApplicationController
  get '/login' do
    session.clear
    if !!session[:user_id]
      redirect '/user/homepage'
    else
      erb :'/user/login'
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user # add code for authentification ---  && user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/user/homepage'
    else
      redirect '/signup'
    end
  end

  post 'logout' do
    #close session and redirect
  end
end
