class AddAttachmentSmallImageToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :small_image_file_name, :string  
      add_column :products, :small_image_content_type, :string  
      add_column :products, :small_image_file_size, :integer  
      add_column :products, :small_image_updated_at, :datetime 
  end

  def self.down
     drop_column :products, :small_image_file_name, :string  
      drop_column :products, :small_image_content_type, :string  
      drop_column :products, :small_image_file_size, :integer  
      drop_column :products, :small_image_updated_at, :datetime 
  end
end
