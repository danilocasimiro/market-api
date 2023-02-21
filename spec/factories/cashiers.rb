# frozen_string_literal: true

FactoryBot.define do
  factory :cashier do
    user { build(:user) }
    company { build(:company) }
    open_value { 1.0 }
    opening_at { Date.today }
    closing_at { Date.tomorrow }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
