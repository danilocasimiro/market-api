# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    street        { Faker::Address.street_name }
    number        { Faker::Address.building_number }
    neighborhood  { Faker::Address.community }
    city          { Faker::Address.city }
    state         { Faker::Address.state }
    zip_code      { Faker::Address.zip_code }
    country       { Faker::Address.country }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
