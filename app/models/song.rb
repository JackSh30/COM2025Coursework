class Song < ApplicationRecord
  belongs_to :album
  validates :title, :length, :album, presence: true
  validates :length, numericality: {greater_than_or_equal_to: 0}
end
