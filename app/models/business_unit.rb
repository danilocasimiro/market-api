# frozen_string_literal: true

class BusinessUnit < ApplicationRecord
  belongs_to :company

  with_options presence: true do
    validates :name
    validates :short_name
    validates :active, inclusion: [true, false]
  end
end
