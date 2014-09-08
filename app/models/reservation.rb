class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  validate :availability
  validate :starts_at_valid_time

  private

  def availability
    unless restaurant.available?(party_size, booking)
      errors.add(:base, "Restaurant is full")
    end
  end


  def starts_at_valid_time
    unless booking.strftime('%H:%M')[3..4] == '00'
      errors.add(:booking, 'must start at full hour (ex. 5:00)') 
    end
  end
end
