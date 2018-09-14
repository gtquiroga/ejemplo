class CreateCiudads < ActiveRecord::Migration[5.1]
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.text :descripcion
      t.string :pais

      t.timestamps
    end
  end
end
