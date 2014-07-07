class AddRestaurantIdToNoms < ActiveRecord::Migration
  def change
    add_column :noms, :restaurant_id, :integer
  end
end
