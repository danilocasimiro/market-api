# frozen_string_literal: true

FactoryBot.define do
  factory :business_unit do
    company { build(:company) }
    name { 'kilograma' }
    short_name { 'kg' }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
