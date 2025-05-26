class CoachesController < ApplicationController
  def index
    @coaches = Coach.includes(:appointments, :appointment_reviews).all
  end
end
