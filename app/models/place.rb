class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  validates :name, presence: true
end
