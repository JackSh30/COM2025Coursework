class Artist < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :active, inclusion: { in: [ true, false ] }
  has_many :albums, dependent: :destroy
end
