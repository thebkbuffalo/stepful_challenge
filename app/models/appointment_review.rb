class AppointmentReview < ApplicationRecord
  belongs_to :appointment
  belongs_to :coach
  belongs_to :student

  validates :coach_id, :student_id, :rating, presence: true
end
