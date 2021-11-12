class Course < ApplicationRecord
  has_many :reservations

  validates :title, :description, :instructor_name, :image, presence: true
end
