class Address < ApplicationRecord
  belongs_to :owner, polymorphic: true

  validates :street_address1, :city, :state, :pincode
end
