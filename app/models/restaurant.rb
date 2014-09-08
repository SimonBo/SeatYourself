class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { in: 2..50 }
  validates :address, presence: true
  validates :address, length: { in: 5..50}

  has_many :reservations
  has_many :users, :through => :reservations
  has_and_belongs_to_many :cuisines
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

 
  def to_s
    "#{name}"
  end



  def available?(party_size, booking)
    reserved = reservations.where(booking: booking).sum(:party_size)
    reserved + party_size <= capacity
  end
end
