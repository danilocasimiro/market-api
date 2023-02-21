# frozen_string_literal: true

FactoryBot.define do
  factory :stock do
    product { build(:product) }
    quantity { 10 }
    minimum { 1 }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
