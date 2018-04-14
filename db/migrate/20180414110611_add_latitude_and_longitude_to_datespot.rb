class AddLatitudeAndLongitudeToDatespot < ActiveRecord::Migration[5.1]
  def change
    add_column :datespots, :latitude, :float
    add_column :datespots, :longitude, :float
  end
end
