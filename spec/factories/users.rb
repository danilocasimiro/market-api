# frozen_string_literal: true

require 'cpf_cnpj'
require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end

    trait(:with_address) do
      association :addresses,
                  strategy: strategy
    end

    trait(:with_phone) do
      association :phones,
                  strategy: strategy
    end

    factory :user_active_complete,
            traits: %I[active with_address with_phone]

    factory :user_inactive_complete,
            traits: %I[inactive with_address with_phone]
  end
end
