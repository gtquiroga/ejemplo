class CreatePais < ActiveRecord::Migration[5.1]
  def change
    create_table :pais do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :suscriptores

      t.timestamps
    end
  end
end
