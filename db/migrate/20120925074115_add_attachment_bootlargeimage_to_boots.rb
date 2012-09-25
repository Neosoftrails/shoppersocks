class AddAttachmentBootlargeimageToBoots < ActiveRecord::Migration
  def self.up
    add_column :boots, :bootlargeimage_file_name, :string  
      add_column :boots, :bootlargeimage_content_type, :string  
      add_column :boots, :bootlargeimage_file_size, :integer  
      add_column :boots, :bootlargeimage_updated_at, :datetime  
    end
  

  def self.down
     add_drop :boots, :bootlargeimage_file_name, :string  
      add_drop :boots, :bootlargeimage_content_type, :string  
      add_drop :boots, :bootlargeimage_file_size, :integer  
      add_drop :boots, :bootlargeimage_updated_at, :datetime  
  end
end
