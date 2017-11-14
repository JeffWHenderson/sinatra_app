

class SessionController < ApplicationController
  use Rack::Flash

  get '/login' do
    if !!session[:user_id] # use logged in helper here
      redirect '/user/homepage'
    else
      erb :'/user/login'
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/user/homepage'
    else
      flash[:message] = "authentification failed"
      redirect '/signup'
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end
end
