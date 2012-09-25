class AddAttachmentBootsmallimageToBoots < ActiveRecord::Migration
  def self.up
   add_column :boots, :bootsmallimage_file_name, :string  
      add_column :boots, :bootsmallimage_content_type, :string  
      add_column :boots, :bootsmallimage_file_size, :integer  
      add_column :boots, :bootsmallimage_updated_at, :datetime  
  end

  def self.down
   add_drop :boots, :bootsmallimage_file_name, :string  
      add_drop :boots, :bootsmallimage_content_type, :string  
      add_drop :boots, :bootsmallimage_file_size, :integer  
      add_drop :boots, :bootsmallimage_updated_at, :datetime  
  end
end
