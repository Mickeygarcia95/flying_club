class OperacionesAerea < ApplicationRecord
  belongs_to :aeronave
  belongs_to :piloto

  after_create :update_piloto
  after_create :update_aeronave

  def update_piloto
    piloto.horas_vuelo += horas_vuelo
    piloto.save
  end

  def update_aeronave
    aeronave.horas_vuelo_mantencion += horas_vuelo
    aeronave.horas_vuelo_acumulado += horas_vuelo
    aeronave.save
  end

end
