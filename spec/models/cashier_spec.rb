# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cashier do
  subject(:cashier) { build(:cashier) }

  describe 'associations' do
    it { is_expected.to belong_to(:company) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:open_value) }
    it { is_expected.to validate_presence_of(:opening_at) }
    it { is_expected.to validate_presence_of(:closing_at) }
  end
end
