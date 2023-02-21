# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :company
  belongs_to :client
  belongs_to :cashier

  enum status: {
    open: 0,
    finished: 1,
    canceled: 2
  }

  with_options presence: true do
    validates :value
    validates :final_value
    validates :paid_value
    validates :status, inclusion: %w[open finished canceled]
    validates :active, inclusion: [true, false]
  end
end
