class PhoneNumber < ApplicationRecord
  belongs_to :owner, polymorphic: true

  validates :phone_type, :phone_number, presence: true

  enum :phone_type, { landline: 0, mobile: 1 }
end
