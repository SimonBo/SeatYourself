class AddAdminOwnerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :owner, :boolean, :default => false
  end
end
