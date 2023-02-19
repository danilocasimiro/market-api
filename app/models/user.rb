# frozen_string_literal: true

class User < ApplicationRecord
  has_many :companies

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_format_of :email, with: Devise.email_regexp

  with_options presence: true do
    validates :encrypted_password, length: { minimum: 6 }
    validates :active, inclusion: [true, false]
    validates :email, uniqueness: { case_sensitive: false },
                      length: { minimum: 4, maximum: 254 }
  end
end
