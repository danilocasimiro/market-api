# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Stock do
  subject(:stock) { build(:stock) }

  describe 'associations' do
    it { is_expected.to belong_to(:product) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:minimum) }
    it { is_expected.to validate_presence_of(:active) }
  end
end
