json.extract! song, :id, :album_id, :title, :length, :created_at, :updated_at
json.url song_url(song, format: :json)
