# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order do
  subject(:order) { build(:order) }

  describe 'associations' do
    it { is_expected.to belong_to(:company) }
    it { is_expected.to belong_to(:cashier) }
    it { is_expected.to belong_to(:client) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:value) }
    it { is_expected.to validate_presence_of(:final_value) }
    it { is_expected.to validate_presence_of(:paid_value) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:active) }
  end
end
