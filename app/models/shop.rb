class Shop < ActiveRecord::Base
  attr_accessible :address, :area, :city, :country, :latitude, :longitude, :name
  geocoded_by :area

  before_validation :geocode
end
