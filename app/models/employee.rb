# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :user
  belongs_to :company

  with_options presence: true do
    validates :role
    validates :active, inclusion: [true, false]
  end
end
