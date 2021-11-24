class User < ApplicationRecord
  has_many :reservations

  validates :username, length: { minimum: 3 }, presence: true, uniqueness: true
end
