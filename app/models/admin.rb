class Admin < ActiveRecord::Base
  attr_accessible :name


validates_presence_of :email
validates_presence_of :password
  
end
