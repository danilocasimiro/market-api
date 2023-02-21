# frozen_string_literal: true

class PaymentMethod < ApplicationRecord
  belongs_to :company

  with_options presence: true do
    validates :name
    validates :active, inclusion: [true, false]
  end
end
