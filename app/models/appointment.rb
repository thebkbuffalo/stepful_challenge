class Appointment < ApplicationRecord
  belongs_to :coach
  belongs_to :student, optional: true
  has_one :appointment_review

  validates :coach_id, :start_time, :end_time, presence: true

  scope :open_appointments, -> { where(booked: false, student_id: nil) }
  scope :booked_appointments, -> { where(booked: true).where.not(student_id: nil) }
  scope :completed_appointments, -> { where("end_time < ?", DateTime.now) }

  def box_header
    if booked && self.completed?
      'Completed'
    elsif booked && !self.completed?
      'Booked'
    elsif !booked
      'Open'
    end
  end

  def show_phone_number?
    student_id.present? && booked
  end

  def completed?
    DateTime.now > end_time
  end
end
