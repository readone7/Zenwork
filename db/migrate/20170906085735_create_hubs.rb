class CreateHubs < ActiveRecord::Migration[5.1]
  def change
    create_table :hubs do |t|
      t.string :hubname
      t.string :website
      t.string :state
      t.text :address

      t.timestamps
    end
  end
end
