# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PaymentMethod do
  subject(:payment_method) { build(:payment_method) }

  describe 'associations' do
    it { is_expected.to belong_to(:company) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:active) }
  end
end
