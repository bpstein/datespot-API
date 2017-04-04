class Category < ApplicationRecord
  has_many :datespots
  validates :name, presence: true
end