class AddAttachmentImageToSocks < ActiveRecord::Migration
  def self.up
    add_column :socks, :image_file_name, :string  
      add_column :socks, :image_content_type, :string  
      add_column :socks, :image_file_size, :integer  
      add_column :socks, :image_updated_at, :datetime 
  end

  def self.down
     drop_column :socks, :image_file_name, :string  
      drop_column :socks, :image_content_type, :string  
      drop_column :socks, :image_file_size, :integer  
      drop_column :socks, :image_updated_at, :datetime 
  end
end
