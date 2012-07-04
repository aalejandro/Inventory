class CreateRingLists < ActiveRecord::Migration
  def change
    create_table :ring_lists do |t|
      t.integer :site_id
      t.integer :ring_id
      t.string :member_number

      t.timestamps
    end
    add_index :ring_lists, :site_id
    add_index :ring_lists, :ring_id
    add_index :ring_lists, [:site_id, :ring_id], unique: true
  end
end
