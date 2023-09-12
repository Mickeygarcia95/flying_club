class Aeronave < ApplicationRecord
  has_many :operaciones_aereas

  after_save :check_mantencion

  MAX_HORAS_VUELO = 10

  def check_mantencion
    if horas_vuelo_mantencion >= MAX_HORAS_VUELO
      # generar alerta de mantenimiento
      # puts "Alerta de mantenimiento para esta aeronave!"
    end
  end
end
