class AddBookingtimeAndPartySizeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :booking, :datetime
    add_column :reservations, :party_size, :integer
  end
end
