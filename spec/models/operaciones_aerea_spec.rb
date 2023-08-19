require 'rails_helper'

RSpec.describe OperacionesAerea, type: :model do
  describe "associations" do
    it { should belong_to(:aeronave) }
    it { should belong_to(:piloto) }
  end

  describe 'callbacks' do
    let(:usuario) {build(:usuario)}
    let(:piloto) { Piloto.create!(usuario: usuario, horas_vuelo: 10) }
    let(:aeronave) { Aeronave.create!(modelo: 'Boeing 757', horas_vuelo_mantencion: 10, horas_vuelo_acumulado: 100) }
    let(:operacion) { OperacionesAerea.new(aeronave: aeronave, piloto: piloto, horas_vuelo: 2) }

    context 'after create' do
      it 'updates piloto horas_vuelo' do
        expect{ operacion.save }.to change{ piloto.horas_vuelo }.by(2)
      end

      it 'updates aeronave horas_vuelo_mantencion and horas_vuelo_acumulado' do
        expect{ operacion.save }.to change{ aeronave.horas_vuelo_mantencion }.by(2)
                                    .and change{ aeronave.horas_vuelo_acumulado }.by(2)
      end
    end
  end
end
