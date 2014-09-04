class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.references :user, index: true
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
