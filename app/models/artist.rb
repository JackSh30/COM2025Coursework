class Artist < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  #validates :active, presence: true
  has_many :albums, dependent: :destroy
end
