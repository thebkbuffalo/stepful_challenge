class Appointment < ApplicationRecord
  belongs_to :coach
  belongs_to :student, optional: true
  has_one :appointment_review

  validates :coach_id, :start_time, :end_time, presence: true

  def box_header
    return 'BOOKED' if booked

    return 'OPEN' if !booked
  end

  def show_phone_number?
    student_id.present? && booked
  end
end
