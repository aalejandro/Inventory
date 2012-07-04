class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :open_mobile_site_id
      t.string :direction

      t.timestamps
    end
  end
end
