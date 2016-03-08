require 'rails_helper'
RSpec.describe Usuario, type: :model do
  let(:usuario) { Usuario.new }
  subject { usuario }

  describe 'associations' do
    it { is_expected.to belong_to(:papel) }
    it { is_expected.to belong_to(:vinculacao).class_name('Pub::Vinculacao') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:papel) }
    it { is_expected.to validate_presence_of(:vinculacao) }
  end

  describe 'methods' do
    it { is_expected.to delegate_method(:nome).to(:papel).with_prefix }
    it { is_expected.to delegate_method(:nome).to(:identificacao_login) }
    it { is_expected.to delegate_method(:iduff).to(:identificacao_login) }

    describe '.ativo?' do
      it 'É verdadeiro quando a data_desativacao for nula' do
        usuario.data_desativacao = nil
        expect(usuario.ativo?).to be true
      end

      it 'É falso quando a data_desativacao não for nula' do
        usuario.data_desativacao = Date.today
        expect(usuario.ativo?).to be false
      end
    end
  end

end
