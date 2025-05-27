class AppointmentReviewsController < ApplicationController
  def new
    @appointment = Appointment.find params['appt_id']
    @new_appointment_review = AppointmentReview.new
  end

  def create
    review_params = params['appointment_review']
    appointment = Appointment.find review_params['appt_id']
    rating = review_params['rating'].to_i
    notes = review_params['notes']
    new_review = AppointmentReview.new(appointment:, student_id: appointment.student_id, coach_id: appointment.coach_id, rating:, notes:)
    binding.pry
    if new_review.save
      redirect_to coach_path(appointment.coach_id), flash: {notice: 'Review created'}
    end
  end
end
