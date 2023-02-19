# frozen_string_literal: true

class Client < ApplicationRecord
  belongs_to :company

  enum gender: {
    male: 0,
    female: 1,
    undefined: 2
  }

  validate :cpf_is_valid?

  with_options presence: true do
    validates :name
    validates :gender
    validates :active, inclusion: [true, false]
  end

  def cpf_is_valid?
    errors.add(:cpf, 'is invalid.') unless CPF.valid?(cpf, strict: true)
  end
end
