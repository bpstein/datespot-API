class User < ActiveRecord::Base

  TEMP_EMAIL_REGEX = /\Achange@me/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 

  validates :name, presence: true, length: { maximum: 25 }

  def email_verified?
    email && email !~ TEMP_EMAIL_REGEX
  end
end
