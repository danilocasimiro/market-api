# frozen_string_literal: true

require 'cpf_cnpj'
require 'rails_helper'

RSpec.describe Client do # rubocop:disable Metrics/BlockLength
  subject(:client) { build(:client) }

  describe 'associations' do
    it { is_expected.to belong_to(:company) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:gender) }
    it { is_expected.to validate_presence_of(:active) }
  end

  context 'when send valid cpf' do
    let(:cpf) { CPF.generate }

    before do
      client.cpf = cpf
      client.save!
    end

    it { expect(client.persisted?).to be_truthy }

    its(:cpf) { is_expected.to eq(cpf) }
  end

  context 'when send invalid cpf' do
    let(:cpf) { 'invalid_cpf' }

    before do
      client.cpf = cpf
    end

    it { expect(client.persisted?).to be_falsey }
    it { expect { client.save! }.to raise_error(ActiveRecord::RecordInvalid, 'Validation failed: Cpf is invalid.') }
  end
end
