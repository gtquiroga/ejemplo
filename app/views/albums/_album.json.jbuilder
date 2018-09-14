json.extract! album, :id, :name, :year, :total_duration, :artist_id, :created_at, :updated_at
json.url album_url(album, format: :json)
