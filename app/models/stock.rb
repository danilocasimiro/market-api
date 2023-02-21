# frozen_string_literal: true

class Stock < ApplicationRecord
  belongs_to :product

  with_options presence: true do
    validates :quantity
    validates :minimum
    validates :active, inclusion: [true, false]
  end
end
