class CreateDatespots < ActiveRecord::Migration[5.0]
  def change
    create_table :datespots do |t|
      t.string :name 
      t.text :short_description
      t.text :long_description
      t.string :location
      t.string :website 
      t.integer :price_range
      t.date :start_date
      t.date :end_date 
      t.boolean :featured, :null => false, :default => false
      t.references :category, foreign_key: true

      t.time :mon_open
      t.time :mon_close 
      t.time :tue_open 
      t.time :tue_close
      t.time :wed_open
      t.time :wed_close
      t.time :thu_open
      t.time :thu_close
      t.time :fri_open
      t.time :fri_close 
      t.time :sat_open
      t.time :sat_close
      t.time :sun_open
      t.time :sun_close 

      t.timestamps
    end
  end
end
