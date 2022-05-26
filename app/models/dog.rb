class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings

  def age
    (Date.today - born_on).to_i / 365
  end
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
