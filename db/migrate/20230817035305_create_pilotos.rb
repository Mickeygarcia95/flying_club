class CreatePilotos < ActiveRecord::Migration[7.0]
  def change
    create_table :pilotos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.string :numero_socio
      t.string :numero_licencia
      t.integer :horas_vuelo

      t.timestamps
    end
  end
end
