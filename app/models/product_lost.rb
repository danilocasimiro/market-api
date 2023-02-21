# frozen_string_literal: true

class ProductLost < ApplicationRecord
  belongs_to :product

  enum reason: {
    overdue: 0,
    own_consumption: 1,
    not_found: 2
  }

  with_options presence: true do
    validates :quantity
    validates :reason, inclusion: %w[overdue own_consumption not_found]
  end
end
