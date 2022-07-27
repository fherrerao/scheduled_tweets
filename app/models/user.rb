class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, 
            format: { with: /\A[^@\s]+@[^@\s]+\.[^@]+\z/, message: "must be a valid email address" }
  validates :password, presence: true, length: { minimum: 6 }
end