# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product do
  subject(:product) { build(:product) }

  describe 'associations' do
    it { is_expected.to belong_to(:category) }
    it { is_expected.to belong_to(:business_unit) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:cost_price) }
    it { is_expected.to validate_presence_of(:sale_price) }
    it { is_expected.to validate_presence_of(:active) }
  end
end
