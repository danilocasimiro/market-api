# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductLost do
  subject(:product_lost) { build(:product_lost) }

  describe 'associations' do
    it { is_expected.to belong_to(:product) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:reason) }
  end
end
