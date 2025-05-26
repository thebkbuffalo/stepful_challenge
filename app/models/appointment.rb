class Appointment < ApplicationRecord
  belongs_to :coach
  belongs_to :student, optional: true
  has_one :appointment_review

  validates :coach_id, :start_time, :end_time, presence: true
end
