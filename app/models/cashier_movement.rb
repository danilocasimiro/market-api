# frozen_string_literal: true

class CashierMovement < ApplicationRecord
  belongs_to :cashier
  belongs_to :payment_method

  enum type: {
    output: 0,
    entry: 1
  }

  with_options presence: true do
    validates :value
    validates :type, inclusion: %w[output entry]
  end
end
