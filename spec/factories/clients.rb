# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :client do
    company { build(:company) }
    name { Faker::Company.industry }
    surname { Faker::Company.name }
    gender { 0 }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
