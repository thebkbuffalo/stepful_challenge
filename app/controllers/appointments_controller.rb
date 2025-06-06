class AppointmentsController < ApplicationController

  def create
    # would add in some error handling
    appt_params = params['appointment']
    coach_id = appt_params['coach_id'].to_i
    datetime_string = "#{appt_params['start_time(1i)']}-#{appt_params['start_time(2i)']}-#{appt_params['start_time(3i)']}T#{appt_params['start_time(4i)']}:#{appt_params['start_time(5i)']}"
    datetime_obj = datetime_string.to_datetime
    end_time = datetime_obj + 2.hours
    new_appointment = Appointment.new(coach_id:, start_time: datetime_obj, end_time:, booked: false)
    if new_appointment.save
      redirect_to coach_path(coach_id), flash: {notice: 'Appointment Created.'}
    end
  end

  def book_appointment
    # would add in some error handling
    appointment = Appointment.find params['appt_id']
    student_id = params['student_id'].to_i
    appointment.update(student_id:, booked: true)
    redirect_to student_path(student_id), flash: {notice: 'Appointment Booked'}
  end
end
