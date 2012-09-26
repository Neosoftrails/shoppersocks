class Product < ActiveRecord::Base
  belongs_to :boot
  belongs_to :sock
  attr_accessible :largeimage, :price, :productname, :small_image, :name, :boot_id, :sock_id

  validates_presence_of :price, :productname, :boot_id, :sock_id

validates_attachment_presence :largeimage
validates_attachment_presence :small_image







 has_attached_file :largeimage, :styles => { :small => "150x150>" },
 :url => "/assets/images/:basename.:extension",  
    :path => "app/assets/images/:basename.:extension"

 has_attached_file :small_image, :styles => { :small => "150x150>" },
 :url => "/assets/images/:basename.:extension",  
    :path => "app/assets/images/:basename.:extension"


end
