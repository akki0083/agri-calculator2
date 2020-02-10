class Field < ApplicationRecord
  validates :name, :surface, presence: true

  belongs_to :user
  belongs_to :crop
end
