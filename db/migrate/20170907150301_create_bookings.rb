class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :title
      t.text :purpose
      t.boolean :status
      t.integer :membercount
      t.string :type
      t.datetime :start
      t.datetime :end
      t.references :user, foreign_key: true
      t.references :space, foreign_key: true

      t.timestamps
    end
  end
end
