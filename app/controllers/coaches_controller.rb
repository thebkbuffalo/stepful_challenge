class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
  end

  def show
    @coach = Coach.includes(:appointments, :appointment_reviews).find params[:id]
    @new_appointment = Appointment.new
    if params['appointment_type'].present?
      case params['appointment_type']
      when 'open'
        @appointments = @coach.appointments.open_appointments
      when 'booked'
        @appointments = @coach.appointments.booked_appointments
      when 'completed'
        @appointments = @coach.appointments.completed_appointments
      end
    else
      @appointments = @coach.appointments
    end
  end
end
