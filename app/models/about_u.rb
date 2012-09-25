class AboutU < ActiveRecord::Base
  attr_accessible :image, :name


  validates_presence_of :name, :image

end
