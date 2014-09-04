class DeleteRestaurantFromCuisine < ActiveRecord::Migration
  def change
    remove_column :cuisines, :restaurant_id
  end
end
