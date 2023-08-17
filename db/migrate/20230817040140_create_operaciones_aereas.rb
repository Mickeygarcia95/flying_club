class CreateOperacionesAereas < ActiveRecord::Migration[7.0]
  def change
    create_table :operaciones_aereas do |t|
      t.references :aeronave, null: false, foreign_key: true
      t.references :piloto, null: false, foreign_key: true
      t.date :fecha_operacion
      t.integer :horas_vuelo
      t.integer :toque_y_despegue
      t.integer :aterrizajes
      t.boolean :incidentes
      t.text :comentarios
      t.string :aerodromos

      t.timestamps
    end
  end
end
