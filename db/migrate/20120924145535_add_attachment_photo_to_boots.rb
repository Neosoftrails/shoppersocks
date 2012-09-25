class AddAttachmentPhotoToBoots < ActiveRecord::Migration
  def self.up
      add_column :boots, :photo_file_name, :string  
      add_column :boots, :photo_content_type, :string  
      add_column :boots, :photo_file_size, :integer  
      add_column :boots, :photo_updated_at, :datetime  
  end

  def self.down
      drop_column :boots, :photo_file_name, :string  
      drop_column :boots, :photo_content_type, :string  
      drop_column :boots, :photo_file_size, :integer  
      drop_column :boots, :photo_updated_at, :datetime    end
end
