# frozen_string_literal: true

class User < ApplicationRecord
  has_many :twitter_accounts
  has_many :tweets
  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\.[^@]+\z/, 
                    message: 'Must be a valid email address' }
end
