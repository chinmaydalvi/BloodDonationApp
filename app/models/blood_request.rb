class BloodRequest < ApplicationRecord
  validates :name, :blood_group, :status, :emergency, presence: true

  enum status: { pending: 0, delivered: 1 }

  has_many :documents, as: :owner
  has_many :addresses, as: :owner
  has_many :phone_numbers, as: :owner
end
