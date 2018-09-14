class CreatePublicacions < ActiveRecord::Migration[5.1]
  def change
    create_table :publicacions do |t|
      t.string :titulo
      t.string :ciudad
      t.string :tipo
      t.text :texto
      t.string :autor
      t.date :fecha
      t.integer :puntaje

      t.timestamps
    end
  end
end
