class Sock < ActiveRecord::Base
	has_many :socks
  attr_accessible :image, :name
validates_presence_of  :name
validates_attachment_presence :image




 has_attached_file :image, :styles => { :small => "150x150>" },
 :url => "/assets/images/:basename.:extension",  
    :path => "app/assets/images/:basename.:extension"
  
 
end
