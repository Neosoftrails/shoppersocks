class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :name
      t.string :email
      t.string :enquiry
      t.integer :telephone
      t.string :comment

      t.timestamps
    end
  end
end
