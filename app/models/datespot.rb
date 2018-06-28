# Datespot class
class Datespot < ActiveRecord::Base
  # Default Range in miles
  # to search near by locations
  IN_RANGE = 50

  belongs_to :category
  validates :name, presence: true
  validates :short_description, presence: true, length: { maximum: 500 }
  validates :location, presence: true
  validates :website, presence: true
  validates :price_range, presence: true, numericality: { only_integer: true }, length: { maximum: 10 }
  validates :quirkiness_rating, presence: true, numericality: { only_integer: true }, length: { maximum: 10 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :category, presence: true

  validates :mon_open, presence: true
  validates :mon_close, presence: true
  validates :tue_open, presence: true
  validates :tue_close, presence: true
  validates :wed_open, presence: true
  validates :wed_close, presence: true
  validates :thu_open, presence: true
  validates :thu_close, presence: true
  validates :fri_open, presence: true
  validates :fri_close, presence: true
  validates :sat_open, presence: true
  validates :sat_close, presence: true
  validates :sun_open, presence: true
  validates :sun_close, presence: true

  has_attached_file :image, styles: { medium: '680x300>', thumb: '170x100>' }
  validates_uniqueness_of :image_file_name
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  geocoded_by :location
  after_validation :geocode

  def image_url(style=:medium)
    if Rails.env.production?
      URI.join(image.s3_bucket.url, image.style_name_as_path(style)).to_s
    else
      image(style)
    end
  end

  def self.search_datespots(location)
    datespots = if location
      # Near by location (text or array of lat,long) within 50 miles
      # default order by distance
      bot_format_data Datespot.near(location, IN_RANGE)
    else
      bot_format_data Datespot.all
    end
  end

  def self.bot_format_data datespots
    datespots.map do |d|
      d.as_json.merge(:image_url => d.image_url)
    end
  end
end
