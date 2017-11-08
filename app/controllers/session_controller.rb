class SessionController < ApplicationController
  get '/login' do
    "on login page"
  end

  post '/login' do
    #validate and redirect
  end

  post 'logout' do
    #close session and redirect
  end
end
