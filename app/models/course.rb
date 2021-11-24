class Course < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :title, :description, :instructor_name, :image, presence: true
end
