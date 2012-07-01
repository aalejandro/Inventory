class CreateManufacturerLists < ActiveRecord::Migration
  def change
    create_table :manufacturer_lists do |t|
      t.integer :product_id
      t.integer :manufacturer_id

      t.timestamps
    end
    add_index :manufacturer_lists, :manufacturer_id
    add_index :manufacturer_lists, :product_id
    add_index :manufacturer_lists, [:manufacturer_id, :product_id], unique: true
  end
end
