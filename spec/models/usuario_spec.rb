require 'rails_helper'

RSpec.describe Usuario, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:nombre) }
    it { is_expected.to validate_presence_of(:apellidos) }
    it { is_expected.to validate_presence_of(:rut) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
