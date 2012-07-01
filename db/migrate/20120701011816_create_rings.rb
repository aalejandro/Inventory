class CreateRings < ActiveRecord::Migration
  def change
    create_table :rings do |t|
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
