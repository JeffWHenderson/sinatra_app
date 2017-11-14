class UserController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect '/user/homepage'
    else
      erb :'/user/signup'
    end
  end

  post '/signup' do
    #                 ////////////// add flash messages ////////////////////////
     @user = User.find_by(username: params[:username])
     if params[:username] == "" || params[:email] == "" || params[:password] == ""
       "flash message you can't have a blank field"
       #redirect '/signup'
     elsif params[:username] == @user.username
       "flash message that username is taken"
        #redirect '/signup'
     else
       @user = User.create(username: params[:username], email: params[:email], password: params[:password])
       session[:user_id] = @user.id
       redirect '/user/homepage'
     end
  end

  get '/user/homepage' do
    # ///////// add flash message and redirect to login  ///////////////////
    if logged_in?
      @user = User.find_by(:id => session[:user_id])
      erb :'user/user_homepage'
    else
      "you must be logged in to view this page"
    end
  end
end
