class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :kind
      t.integer :product_id
      t.integer :site_id

      t.timestamps
    end
  end
end
