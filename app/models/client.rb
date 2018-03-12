class Client < ActiveRecord::Base
  has_many :notifications, foreign_key: 'source_app', primary_key: 'source_app'
  validates_presence_of :api_key
  validates_uniqueness_of :api_key
  before_validation :set_api_key

  private

  def set_api_key
    self.api_key = ApiKey.generator
  end
end