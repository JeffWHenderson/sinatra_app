class UserController < ApplicationController

  get '/signup' do
    erb :'/user/signup'
  end

  post '/signup' do
    #checks for unique username..
    #creates an instance of the User class
    #saves to database
    #redirects either Valid? => UserHomePage NotValid => SignUp + flash Message
     if params[:username] == "" || params[:email] == "" || params[:password] == ""
       redirect '/signup'
     else
       @user = User.create(username: params[:username], email: params[:email], password: params[:password])
       session[:user_id] = @user.id
       redirect '/user/homepage'
     end
  end

  get '/user/homepage' do
    @user = User.find_by(:id => session[:user_id])
    erb :'user/user_homepage'
  end
end
