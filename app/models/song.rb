class Song < ApplicationRecord
  belongs_to :album                                               # Every song belongs to an album.
  validates :title, :length, :album, presence: true               # Every field is required.
  validates :length, numericality: {greater_than_or_equal_to: 0}  # Length of a song cannot be less than zero.
end
