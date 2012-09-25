class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productname
      t.float :price
      t.string :largebootimage
      t.string :smallbootimage
      t.references :boot
      t.references :sock

      t.timestamps
    end
    add_index :products, :boot_id
    add_index :products, :sock_id
  end
end
