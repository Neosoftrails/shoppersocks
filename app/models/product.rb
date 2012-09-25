class Product < ActiveRecord::Base
  belongs_to :boot
  belongs_to :sock
  attr_accessible :largebootimage, :price, :productname, :smallbootimage

  validates_presence_of :price, :productname
end
