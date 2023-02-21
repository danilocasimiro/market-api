# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Address do
  subject(:address) { build(:address) }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end
