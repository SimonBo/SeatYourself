class Restaurant < ActiveRecord::Base
  has_many :reservations
  has_many :users, :through => :reservations
  has_and_belongs_to_many :cuisines
  has_many :reviews

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def to_s
    "#{name}"
  end
end
