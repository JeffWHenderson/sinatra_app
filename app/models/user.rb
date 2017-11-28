class User < ActiveRecord::Base
  has_secure_password
  has_many :characters

  #username
  #password
  #email
end
