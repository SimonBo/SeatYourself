class CreateJoinTableForRestaurantsAndCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines_restaurants, id: false do |t|
      t.belongs_to :cuisine
      t.belongs_to :restaurant
    end
  end
end
