class Album < ApplicationRecord
  belongs_to :artist
  validates :title, :artist, :release, :numOfSongs, :length, presence: true
end
