class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.includes(:appointments).find params[:id]
  end
end
