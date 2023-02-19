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
  end
end
