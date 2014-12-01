class User < ActiveRecord::Base
  attr_accessible :admin, :email, :motto, :name, :password, :solved, :submit
end
