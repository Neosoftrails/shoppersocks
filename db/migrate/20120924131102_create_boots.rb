class CreateBoots < ActiveRecord::Migration
  def change
    create_table :boots do |t|
      t.string :name
      t.string :bootlargeimage
      t.string :bootsmallimage
      t.string :thumbimage

      t.timestamps
    end
  end
end
