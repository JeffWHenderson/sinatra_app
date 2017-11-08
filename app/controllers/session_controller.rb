class SessionController < ApplicationController
  get '/login' do
    erb :'/user/login'
  end

  post '/login' do
    #validate and redirect
  end

  post 'logout' do
    #close session and redirect
  end
end
