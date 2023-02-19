# frozen_string_literal: true

require 'cpf_cnpj'
require 'rails_helper'

RSpec.describe Company do # rubocop:disable Metrics/BlockLength
  subject(:company) { build(:company) }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validation' do  # rubocop:disable Metrics/BlockLength
    it { is_expected.to validate_presence_of(:business_name) }
    it { is_expected.to validate_presence_of(:fantasy_name) }
    it { is_expected.to validate_presence_of(:active) }
    it { is_expected.to validate_presence_of(:cnpj) }
    it 'validates that cnpj is valid', aggregate_failures: true do
      expect(company).to allow_values(
        '54.934.454/0001-69', '00.000.000/0000-00'
      ).for(:cnpj)
      expect(company).to_not allow_values(nil, 'invalid cnpj', '00000000000000', 123, {}, []).for(:cnpj)
    end

    context 'when send valid cnpj' do
      let(:cnpj) { '00.000.000/0000-00' }

      before do
        company.cnpj = cnpj
        company.save!
      end

      it { expect(company.persisted?).to be_truthy }

      its(:cnpj) { is_expected.to eq(cnpj) }
    end

    context 'when send invalid cnpj' do
      let(:cnpj) { 'invalid_cnpj' }

      before do
        company.cnpj = cnpj
      end

      it { expect(company.persisted?).to be_falsey }
      it { expect { company.save! }.to raise_error(ActiveRecord::RecordInvalid, 'Validation failed: Cnpj invalid') }
    end
  end
end
