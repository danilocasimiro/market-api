# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CashierMovement do
  subject(:cashier_movement) { build(:cashier_movement) }

  describe 'associations' do
    it { is_expected.to belong_to(:cashier) }
    it { is_expected.to belong_to(:payment_method) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:value) }
    it { is_expected.to validate_presence_of(:type) }
  end
end
