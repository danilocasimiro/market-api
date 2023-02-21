# frozen_string_literal: true

FactoryBot.define do
  factory :cashier_movement do
    cashier { build(:cashier) }
    payment_method { build(:payment_method) }
    value { 1.0 }

    CashierMovement.types.each_key do |t|
      trait(t.to_sym) { type { t.to_sym } }
    end
  end
end
