# frozen_string_literal: true

FactoryBot.define do
  factory :payment_method do
    company { build(:company) }
    name { 'credit_card' }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
