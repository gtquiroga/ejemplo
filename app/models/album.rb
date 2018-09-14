class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs
  before_save :update_first_album_year

  def update_first_album_year
    artist = Artist.find(artist_id)
    # la condicion de abajo es para verificar que el año del album sea menor que el primer album que tiene el mismo artista
    if year < artist.first_album_year
      artist.first_album_year = year
      artist.save
    end
  end
end
