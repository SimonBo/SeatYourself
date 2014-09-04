class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.references :restaurant, index: true
      t.string :name

      t.timestamps
    end
  end
end
