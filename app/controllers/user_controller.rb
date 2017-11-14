class UserController < ApplicationController
  use Rack::Flash

  get '/signup' do
    if logged_in?
      redirect '/user/homepage'
    else
      erb :'/user/signup'
    end
  end

  post '/signup' do
     @user = User.find_by(username: params[:username])
     if params[:username] == "" || params[:email] == "" || params[:password] == ""
       flash[:message] = "all fields must be filled out "  # ////////////////////// test this ///////////////////
       redirect '/signup'
     elsif params[:username] == User.all.detect { |u| u.username }
        flash[:message] = "Username is already take" # ////////////////////// test this ///////////////////
        redirect '/signup'
     else
       @user = User.create(username: params[:username], email: params[:email], password: params[:password])
       session[:user_id] = @user.id
       redirect '/user/homepage'
     end
  end

  get '/user/homepage' do
    if logged_in?
      @user = User.find_by(:id => session[:user_id])
      erb :'user/user_homepage'
    else
      flash[:message] = "must be logged in to see this page"  # ////////////////////// test this ///////////////////
      redirect '/login'
    end
  end
end
