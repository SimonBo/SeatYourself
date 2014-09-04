class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
