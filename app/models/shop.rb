class Shop < ActiveRecord::Base
  attr_accessible :address, :area, :city, :country, :latitude, :longitude, :name
end
