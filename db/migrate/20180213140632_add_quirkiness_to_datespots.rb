class AddQuirkinessToDatespots < ActiveRecord::Migration[5.1]
  def change
    add_column :datespots, :quirkiness_rating, :integer
  end
end
