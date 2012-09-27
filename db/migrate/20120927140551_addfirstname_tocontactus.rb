class AddfirstnameTocontactus < ActiveRecord::Migration
  def up
  	  add_column :contact_us, :first_name, :string  
      add_column :contact_us, :last_name, :string  
  end

  def down
  	  drop_column :contact_us, :first_name, :string  
      drop_column :contact_us, :last_name, :string  
  end
end
