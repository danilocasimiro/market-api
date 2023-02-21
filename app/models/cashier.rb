# frozen_string_literal: true

class Cashier < ApplicationRecord
  belongs_to :company
  belongs_to :user

  with_options presence: true do
    validates :open_value
    validates :opening_at
    validates :closing_at
  end
end
