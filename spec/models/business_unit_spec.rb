# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BusinessUnit do
  subject(:business_unit) { build(:business_unit) }

  describe 'associations' do
    it { is_expected.to belong_to(:company) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:short_name) }
    it { is_expected.to validate_presence_of(:active) }
  end
end
