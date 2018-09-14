class Artist < ApplicationRecord
  has_many :albums
  validates :name, presence: true
  validates :birth_year, presence: true
  validates :first_album_year, presence: true
  validate :valid_first_album_year

  def valid_first_album_year
    if first_album_year < birth_year
      errors.add(:first_album_year, 'debe ser mayor al año de nacimiento')
    end
  end
end
