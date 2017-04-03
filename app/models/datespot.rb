class Datespot < ActiveRecord::Base
  validates :name, presence: true
  validates :short_description, presence: true
  validates :location, presence: true
  validates :price_range, presence: true 
  validates :category, presence: true
end