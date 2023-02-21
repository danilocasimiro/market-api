# frozen_string_literal: true

FactoryBot.define do
  factory :employee do
    user { build(:user) }
    company { build(:company) }
    role { 'Programmer' }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
