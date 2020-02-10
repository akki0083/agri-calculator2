class Crop < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :field
end
