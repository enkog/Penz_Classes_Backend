class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :user_id, :course_id, :start_date, presence: true
end
