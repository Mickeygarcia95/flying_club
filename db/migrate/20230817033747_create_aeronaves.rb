class CreateAeronaves < ActiveRecord::Migration[7.0]
  def change
    create_table :aeronaves do |t|
      t.string :modelo
      t.string :matricula
      t.integer :horas_vuelo_acumulado
      t.integer :horas_vuelo_mantencion
      t.integer :mantencion_total

      t.timestamps
    end
  end
end
