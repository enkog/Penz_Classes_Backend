class User < ApplicationRecord
  has_many :reservations

  validates :username, length: { minimum: 2 }, presence: true, uniqueness: true
end
