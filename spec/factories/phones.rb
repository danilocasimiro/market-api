# frozen_string_literal: true

Faker::Config.locale = 'pt-BR'

FactoryBot.define do
  factory :phone do
    area_code { Faker::PhoneNumber.area_code }
    number    { Faker::PhoneNumber.phone_number }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
