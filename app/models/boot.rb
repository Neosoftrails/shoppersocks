class Boot < ActiveRecord::Base
	has_many :products
    



	has_attached_file :bootlargeimage, :styles => { :small => " 50x50>" },
	:url => "/assets/images/:basename.:extension",  
  :path => "app/assets/images/products/:basename.:extension"
  #attr_protected :bootlargeimage_content_type, :bootlargeimage_size, :bootlargeimage_updated_at    
  
  has_attached_file :bootsmallimage, :styles => { :small => " 50x50>" },
  :url => "/assets/images/:basename.:extension",  
  :path => "app/assets/images/products/:basename.:extension"
  #attr_protected :bootsmallimage_content_type, :bootsmallimage_size, :bootsmallimage_updated_at   

  has_attached_file :bootthumbimage, :styles => { :small => " 50x50>" },
  :url => "/assets/images/:basename.:extension",  
  :path => "app/assets/images/products/:basename.:extension"
  #attr_protected :thumbimage_content_type, :thumbimage_size, :thumbimage_updated_at	


  #validates_attachment_presence :bootlargeimage, :bootsmallimage, :thumbimage

validates_presence_of :name

  attr_accessible :bootlargeimage, :bootsmallimage, :name, :bootthumbimage
end
