# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :company
  belongs_to :category
  belongs_to :business_unit

  with_options presence: true do
    validates :name
    validates :cost_price
    validates :sale_price
    validates :active, inclusion: [true, false]
  end
end
