# frozen_string_literal: true

FactoryBot.define do
  factory :product_lost do
    product { build(:product) }
    quantity { 1 }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end

    ProductLost.reasons.each_key do |r|
      trait(r.to_sym) { reason { r.to_sym } }
    end
  end
end
