# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :business_name
    validates :fantasy_name
    validates :active, inclusion: [true, false]
    validates :cnpj, format: {
      with: %r((^\d{2}.\d{3}.\d{3}/\d{4}-\d{2}$)),
      message: 'invalid'
    }
  end
end
