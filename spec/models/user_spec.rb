# frozen_string_literal: true

require 'cpf_cnpj'
require 'rails_helper'

RSpec.describe User do # rubocop:disable Metrics/BlockLength
  subject(:user) { build(:user) }

  describe 'associations' do
    it { is_expected.to have_many(:companies) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
    it { is_expected.to validate_presence_of(:active) }
  end

  context 'when send valid email' do
    let(:email) { Faker::Internet.email }

    before do
      user.email = email
      user.save!
    end

    it { expect(user.persisted?).to be_truthy }

    its(:email) { is_expected.to eq(email) }
  end

  context 'when send invalid email' do
    let(:email) { 'invalid_email' }

    before do
      user.email = email
    end

    it { expect(user.persisted?).to be_falsey }
    it { expect { user.save! }.to raise_error(ActiveRecord::RecordInvalid, 'Validation failed: Email is invalid') }
  end
end
