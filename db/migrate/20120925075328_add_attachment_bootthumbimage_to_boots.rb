class AddAttachmentBootthumbimageToBoots < ActiveRecord::Migration
  def self.up
   add_column :boots, :bootthumbimage_file_name, :string  
      add_column :boots, :bootthumbimage_content_type, :string  
      add_column :boots, :bootthumbimage_file_size, :integer  
      add_column :boots, :bootthumbimage_updated_at, :datetime 
  end

  def self.down
     add_drop :boots, :bootthumbimage_file_name, :string  
      add_drop :boots, :bootthumbimage_content_type, :string  
      add_drop :boots, :bootthumbimage_file_size, :integer  
      add_drop :boots, :bootthumbimage_updated_at, :datetime  
  end
end
