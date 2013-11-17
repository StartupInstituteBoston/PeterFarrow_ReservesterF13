class AddRestaurantimageToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :restaurantimage, :string
  end
end
