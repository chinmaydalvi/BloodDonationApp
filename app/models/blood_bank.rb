class BloodBank < ApplicationRecord
  validates :name, :established_on, :government_approved, presence: true

  has_many :addresses, as: :owner
  has_many :phone_numbers, as: :owner
end
