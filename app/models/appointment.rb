class Appointment < ApplicationRecord
  belongs_to :coach
  belongs_to :student, optional: true

  validates :coach_id, :start_time, :end_time, presence: true
end
