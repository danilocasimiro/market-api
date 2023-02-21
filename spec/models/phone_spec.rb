# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Phone, type: :model do
  subject(:phone) { build(:phone) }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end
end
