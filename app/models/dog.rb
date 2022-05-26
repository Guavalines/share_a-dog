class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  def age
    (Date.today - born_on).to_i / 365
  end
end
