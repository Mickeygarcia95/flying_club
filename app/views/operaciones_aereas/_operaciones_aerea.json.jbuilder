json.extract! operaciones_aerea, :id, :aeronave_id, :piloto_id, :fecha_operacion, :horas_vuelo, :toque_y_despegue, :aterrizajes, :incidentes, :comentarios, :aerodromos, :created_at, :updated_at
json.url operaciones_aerea_url(operaciones_aerea, format: :json)
