# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    client { build(:client) }
    company { build(:company) }
    cashier { build(:cashier) }
    value { 1.0 }
    final_value { 1.0 }
    paid_value { 1.0 }

    Order.statuses.each_key do |s|
      trait(s.to_sym) { status { s.to_sym } }
    end

    trait :active do
      active { true }
    end

    trait :inactive do
      active { false }
    end
  end
end
