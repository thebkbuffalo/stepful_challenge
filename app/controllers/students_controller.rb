class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.includes(:appointments).find params[:id]
    @appointments = @student.appointments
    @open_appointments = Appointment.open_appointments
  end
end
