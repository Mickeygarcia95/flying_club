class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :piloto

  validates :nombre, :apellidos, :rut, :email, :password, presence: true

  def full_name
    "#{nombre} #{apellidos}"
  end
end
