class Artist < ApplicationRecord
  validates :name, presence: true                         # Name field is required.
  validates :name, uniqueness: true                       # Name field must be unique.
  validates :active, inclusion: { in: [ true, false ] }   # Artist's active value can be true or false.
  has_many :albums, dependent: :destroy                   # If an artist is destroyed, its albums (and therefore songs) are destroyed too.
end
