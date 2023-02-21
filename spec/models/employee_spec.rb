# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Employee do
  subject(:employee) { build(:employee) }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:company) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:role) }
    it { is_expected.to validate_presence_of(:active) }
  end
end
