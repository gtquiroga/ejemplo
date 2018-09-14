json.extract! artist, :id, :name, :birth_year, :first_album_year, :created_at, :updated_at
json.url artist_url(artist, format: :json)
