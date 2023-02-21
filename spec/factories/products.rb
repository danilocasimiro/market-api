# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    category { build(:category) }
    company { build(:company) }
    business_unit { build(:business_unit) }
    name { Faker::Commerce.product_name }
    cost_price { 1.0 }
    sale_price { 1.0 }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
