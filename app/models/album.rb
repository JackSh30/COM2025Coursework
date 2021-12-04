class Album < ApplicationRecord
  belongs_to :artist # Every album belongs to an artist.
  validates :title, :artist, :release, :numOfSongs, :length, presence: true # All fields except description are required.
  validates :length, numericality: {greater_than_or_equal_to: 0}  # Length of an album cannot be less than zero.
  validates :numOfSongs, numericality: {greater_than_or_equal_to: 1}  # numOfSongs cannot be less than One.
  has_many :songs, dependent: :destroy # If album is deleted, its songs are deleted too.
end
