class Artist < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  #validates :active, presence: true
  #commented out above as was not saving artists if active value was set to false.
  has_many :albums, dependent: :destroy
end
