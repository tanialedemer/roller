class CreateAthletes < ActiveRecord::Migration[6.0]
  def change
    create_table :athletes do |t|
      t.string :apellido
      t.string :nombre
      t.integer :doc
      t.date :fecha_nac
      t.integer :edad
      t.integer :nivel_escuela
      t.integer :nivel_libre
      t.string :nivel_danza
      t.text :escuela
      t.integer :year_birth
      t.string :estado

      t.timestamps
    end
  end
end
