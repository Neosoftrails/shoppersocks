class Sock < ActiveRecord::Base
	has_many :socks
  attr_accessible :image, :name




 has_attached_file :image, :styles => { :small => "150x150>" },
 :url => "/assets/images/:basename.:extension",  
    :path => "app/assets/images/products/:basename.:extension"
  
 #validates_presence_of :image, :name
end
