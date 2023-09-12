class Piloto < ApplicationRecord
  belongs_to :usuario
  has_many :operaciones_aereas

  delegate :full_name, to: :usuario
end
