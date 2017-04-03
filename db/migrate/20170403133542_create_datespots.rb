class CreateDatespots < ActiveRecord::Migration[5.0]
  def change
    create_table :datespots do |t|
      t.string :name 
      t.text :short_description
      t.text :long_description
      t.string :category
      t.string :location
      t.integer :price_range

      t.timestamps
    end
  end
end