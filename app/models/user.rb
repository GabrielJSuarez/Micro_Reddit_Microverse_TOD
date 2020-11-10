class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true

  validates :password, presence: true, length: { minimum: 6, maximum: 16 }
end
