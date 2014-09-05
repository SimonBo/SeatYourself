class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reservations

  geocoded_by :ip_address
  after_validation :geocode
   
  def to_s
    "#{email}"
  end
end
