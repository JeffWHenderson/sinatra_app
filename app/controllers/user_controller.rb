class UserController < ApplicationController

  get '/signup' do
    "SIGNUP PAGE"
  end

  post '/signup' do
    #checks for unique username..
    #creates an instance of the User class
    #saves to database
    #redirects either Valid? => UserHomePage NotValid => SignUp + flash Message
  end
end
