class Crop < ApplicationRecord

  belongs_to :user
  has_many :field
end
