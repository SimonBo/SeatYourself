class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validate :availability

  private

  def availability
    unless restaurant.available?(party_size, booking)
      errors.add(:base, "Restaurant is full")
    end
  end
end
