class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
  end

  def show
    @coach = Coach.includes(:appointments, :appointment_reviews).find params[:id]
    @appointments = @coach.appointments
  end
end
