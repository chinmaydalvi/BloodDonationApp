class Document < ApplicationRecord
  belongs_to :owner, polymorphic: true

  validates :file, :owner, presence: true
end
