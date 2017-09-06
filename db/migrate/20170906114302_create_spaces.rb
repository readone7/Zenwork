class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :spacename
      t.text :description
      t.time :opentime
      t.time :closetime
      t.boolean :restricted
      t.integer :capacity
      t.integer :price
      t.boolean :availabile
      t.references :hub, foreign_key: true

      t.timestamps
    end
  end
end
