class User < ActiveRecord::Base
  has_secure_password
  has_many :characters

  #User_slug???
  #sanitize_inputs

  #username
  #password
  #email
end
