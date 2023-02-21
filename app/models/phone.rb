# frozen_string_literal: true

class Phone < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :active, inclusion: [true, false]
  end
end
