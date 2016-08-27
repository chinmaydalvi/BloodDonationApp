class BloodDonationRecord < ApplicationRecord
  belongs_to :user
  belongs_to :blood_bank

  validates :user, :blood_bank, :donation_date, :quantity, presence: true
end
