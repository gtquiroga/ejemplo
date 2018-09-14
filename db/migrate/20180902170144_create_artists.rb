class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :birth_year
      t.integer :first_album_year

      t.timestamps
    end
  end
end
