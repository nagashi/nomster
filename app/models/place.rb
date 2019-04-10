class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, :description, presence: true, length: { minimum: 3 }
  validates :address, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
end
