class CreateNivelLibres < ActiveRecord::Migration[6.0]
  def change
    create_table :nivel_libres do |t|
      t.string :description

      t.timestamps
    end
  end
end
