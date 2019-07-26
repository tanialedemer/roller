class CreateNivelEscuelas < ActiveRecord::Migration[6.0]
  def change
    create_table :nivel_escuelas do |t|
      t.string :description

      t.timestamps
    end
  end
end
