# frozen_string_literal: true

require 'cpf_cnpj'
require 'faker'

FactoryBot.define do
  factory :company do
    user { build(:user) }
    business_name { Faker::Company.industry }
    fantasy_name { Faker::Company.name }
    cnpj { CNPJ.generate }

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
