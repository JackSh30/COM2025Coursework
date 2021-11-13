json.extract! album, :id, :artist_id, :title, :description, :release, :numOfSongs, :length, :created_at, :updated_at
json.url album_url(album, format: :json)
