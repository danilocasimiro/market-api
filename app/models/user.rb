# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :encrypted_password, length: { minimum: 6 }
    validates :status, inclusion: [true, false]
    validates :email, format: { with: /\a(.+)@(.+)\z/, message: 'Email invalid' },
                      uniqueness: { case_sensitive: false },
                      length: { minimum: 4, maximum: 254 }
  end
end
