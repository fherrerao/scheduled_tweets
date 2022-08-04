# frozen_string_literal: true

class User < ApplicationRecord
  has_many :twitter_accounts
  has_secure_password

  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\.[^@]+\z/, message: 'Must be a valid email address' }
  validates :password, presence: true, length: { minimum: 6 }
end
