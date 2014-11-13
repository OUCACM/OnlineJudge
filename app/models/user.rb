class User < ActiveRecord::Base
  attr_accessible :email, :motto, :name, :password, :solved, :submit, :type
end
